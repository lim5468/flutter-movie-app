import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/usecase/get_movies_by_category_usecase.dart';

import 'movie_category_listing_event.dart';
import 'movie_category_listing_state.dart';

@injectable
class MovieCategoryListingBloc
    extends Bloc<MovieCategoryListingEvent, MovieCategoryListingState> {
  MovieCategoryListingBloc(
    this._getMovieByCategoryUseCase,
  ) : super(const Initial()) {
    on<Init>(_handleInit);
    on<Refresh>(_handleRefresh);
    on<SetMovieCategory>(_handleSetMovieCategory);
    on<FetchMovieList>(_handleFetchMovieList, transformer: restartable());
  }

  final GetMoviesByCategoryUseCase _getMovieByCategoryUseCase;

  FutureOr<void> _handleInit(
    Init event,
    Emitter<MovieCategoryListingState> emitter,
  ) async {
    emitter(const Loading());
  }

  FutureOr<void> _handleFetchMovieList(
    FetchMovieList event,
    Emitter<MovieCategoryListingState> emitter,
  ) async {
    final currentState = state;

    if (currentState is! Loaded) {
      return;
    }

    emitter(
      currentState.copyWith(
        isMovieListLoading: true,
        movieListError: null,
      ),
    );

    if (event.useDelay) {
      //simulate a little delay for better visual experience
      await Future<void>.delayed(const Duration(milliseconds: 500));
    }

    try {
      final movies = await _getMovieByCategoryUseCase.execute(
        currentState.movieCategory,
        event.page,
      );

      emitter(
        currentState.copyWith(
          movies:
              event.page == 1 ? movies : [...currentState.movies, ...movies],
          isMovieListLoading: false,
          lastFetchMoviesPage: event.page,
          lastFetchMoviesSize: movies.length,
          movieListError: null,
        ),
      );
    } catch (e) {
      emitter(
        currentState.copyWith(
          isMovieListLoading: false,
          movieListError: e.toString(),
        ),
      );
    }
  }

  FutureOr<void> _handleSetMovieCategory(
    SetMovieCategory event,
    Emitter<MovieCategoryListingState> emitter,
  ) async {
    emitter(
      Loaded(
        movieCategory: event.movieCategory,
      ),
    );

    add(const FetchMovieList(useDelay: true));
  }

  FutureOr<void> _handleRefresh(
    Refresh event,
    Emitter<MovieCategoryListingState> emitter,
  ) async {
    final currentState = state;

    if (currentState is! Loaded) {
      return;
    }

    emitter(
      Loaded(
        movieCategory: currentState.movieCategory,
      ),
    );
    add(const FetchMovieList(useDelay: true));
  }
}
