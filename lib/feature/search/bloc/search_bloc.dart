import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/domain/usecase/search_movies_usecase.dart';

import 'search_event.dart';
import 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(
    this._searchMoviesUseCase,
  ) : super(const Initial()) {
    on<Init>(_handleInit);
    on<UpdateQuery>(_handleUpdateQuery, transformer: restartable());
    on<FetchPage>(_handleFetchPage, transformer: restartable());
  }

  final SearchMoviesUseCase _searchMoviesUseCase;

  final box = Hive.box<List<String>>(Constants.hiveMovieSearchHistoryBox);

  FutureOr<void> _handleInit(
    Init event,
    Emitter<SearchState> emitter,
  ) async {
    emitter(
      Loaded(
        queryHistory: box.get('searchHistory')?.take(5).toList() ?? [],
      ),
    );
  }

  FutureOr<void> _handleUpdateQuery(
    UpdateQuery event,
    Emitter<SearchState> emitter,
  ) async {
    final currentState = state;

    if (currentState is! Loaded) {
      return;
    }

    final query = event.query;

    if (query.isEmpty) {
      emitter(
        currentState.copyWith(
          isSearching: false,
          searchError: null,
          currentQuery: null,
          movies: const [],
          lastSearchResultsPage: null,
          lastSearchResultsSize: null,
        ),
      );
      return;
    }

    final queryHistory = [...currentState.queryHistory]
      ..remove(query)
      ..insert(0, query);

    final filteredQueryHistory = queryHistory.take(5).toList();

    await box.put('searchHistory', filteredQueryHistory);

    emitter(
      currentState.copyWith(
        isSearching: true,
        searchError: null,
        movies: const [],
        currentQuery: query,
        queryHistory: filteredQueryHistory,
        lastSearchResultsPage: null,
        lastSearchResultsSize: null,
      ),
    );

    add(const FetchPage(page: 1));
  }

  FutureOr<void> _handleFetchPage(
    FetchPage event,
    Emitter<SearchState> emitter,
  ) async {
    final currentState = state;

    if (currentState is! Loaded) {
      return;
    }

    if (currentState.currentQuery?.isEmpty ?? true) {
      return;
    }

    try {
      final movies = await _searchMoviesUseCase.execute(
        currentState.currentQuery!,
        event.page,
      );

      emitter(
        currentState.copyWith(
          movies:
              event.page == 1 ? movies : [...currentState.movies, ...movies],
          isSearching: false,
          searchError: null,
          lastSearchResultsPage: event.page,
          lastSearchResultsSize: movies.length,
        ),
      );
    } catch (e) {
      emitter(
        currentState.copyWith(
          isSearching: false,
          searchError: e.toString(),
        ),
      );
    }
  }
}
