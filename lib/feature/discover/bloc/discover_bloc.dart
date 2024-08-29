import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/usecase/get_movie_genres_usecase.dart';
import 'package:movie_app/domain/usecase/get_movies_by_genre_usecase.dart';
import 'package:movie_app/utils/extensions/error_helper.dart';

import 'discover_event.dart';
import 'discover_state.dart';

@injectable
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(
    this._getMovieGenresUseCase,
    this._getMoviesByGenreUseCase,
  ) : super(const Initial()) {
    on<DiscoverEvent>((event, emitter) async {
      switch (event) {
        case Init():
          await _handleInit(event, emitter);
        case Refresh():
          await _handleRefresh(event, emitter);
        case SetMovieGenres():
          await _handleSetMovieGenre(event, emitter);
        default:
          break;
      }
    });

    on<FetchMovieList>(
      (event, emitter) async {
        await _handleFetchMovieList(event, emitter);
      },
      transformer: restartable(),
    );
  }

  final GetMovieGenresUseCase _getMovieGenresUseCase;
  final GetMoviesByGenreUseCase _getMoviesByGenreUseCase;

  FutureOr<void> _handleInit(
    Init event,
    Emitter<DiscoverState> emitter,
  ) async {
    emitter(const Loading());

    //simulate a little delay for better visual experience
    await Future<void>.delayed(const Duration(seconds: 1));

    try {
      final genres = await _getMovieGenresUseCase.execute();

      emitter(
        Loaded(
          movieGenres: genres,
          selectedMovieGenres: [],
        ),
      );

      add(const FetchMovieList());
    } catch (e) {
      emitter(
        Error(
          message: e.errorMessage,
        ),
      );
    }
  }

  FutureOr<void> _handleFetchMovieList(
    FetchMovieList event,
    Emitter<DiscoverState> emitter,
  ) async {
    final currentState = state;

    if (currentState is! Loaded) {
      return;
    }

    emitter(
      currentState.copyWith(
        isMovieListLoading: true,
      ),
    );

    try {
      final movies = await _getMoviesByGenreUseCase.execute(
          currentState.selectedMovieGenres, event.page);

      emitter(
        currentState.copyWith(
          movies:
              event.page == 1 ? movies : [...currentState.movies, ...movies],
          isMovieListLoading: false,
        ),
      );
    } catch (e) {
      emitter(
        currentState.copyWith(
          movieListError: e.toString(),
        ),
      );
    }
  }

  FutureOr<void> _handleSetMovieGenre(
    SetMovieGenres event,
    Emitter<DiscoverState> emitter,
  ) async {
    final currentState = state;

    if (currentState is! Loaded) {
      return;
    }

    emitter(
      currentState.copyWith(
        selectedMovieGenres: event.movieGenres,
      ),
    );

    add(const FetchMovieList());
  }

  FutureOr<void> _handleRefresh(
    Refresh event,
    Emitter<DiscoverState> emitter,
  ) async {
    add(const Init());
  }
}
