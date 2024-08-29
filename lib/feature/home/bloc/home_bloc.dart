import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/domain/usecase/get_movies_by_category_usecase.dart';
import 'package:movie_app/utils/extensions/error_helper.dart';

import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._getMovieByCategoryUseCase,
  ) : super(const Initial()) {
    on<Init>(_handleInit);
    on<Refresh>(_handleRefresh, transformer: restartable());
  }

  final GetMoviesByCategoryUseCase _getMovieByCategoryUseCase;

  FutureOr<void> _handleInit(
    Init event,
    Emitter<HomeState> emitter,
  ) async {
    emitter(
      const Loaded(
        isPopularListLoading: true,
        isTopRatedListLoading: true,
        isUpcomingListLoading: true,
        isNowPlayingListLoading: true,
      ),
    );

    void emit(MovieCategory category, List<Movie> movies) {
      final currentState = state;
      if (currentState is Loaded) {
        switch (category) {
          case MovieCategory.popular:
            emitter(
              currentState.copyWith(
                popularMovies: movies,
                isPopularListLoading: false,
                popularListError: null,
              ),
            );
          case MovieCategory.topRated:
            emitter(
              currentState.copyWith(
                topRatedMovies: movies,
                isTopRatedListLoading: false,
                topRatedListError: null,
              ),
            );
          case MovieCategory.upcoming:
            emitter(
              currentState.copyWith(
                upcomingMovies: movies,
                isUpcomingListLoading: false,
                upcomingListError: null,
              ),
            );
          case MovieCategory.nowPlaying:
            emitter(
              currentState.copyWith(
                nowPlayingMovies: movies,
                isNowPlayingListLoading: false,
                nowPlayingListError: null,
              ),
            );
        }
      } else {
        switch (category) {
          case MovieCategory.popular:
            emitter(Loaded(popularMovies: movies));
          case MovieCategory.topRated:
            emitter(Loaded(topRatedMovies: movies));
          case MovieCategory.upcoming:
            emitter(Loaded(upcomingMovies: movies));
          case MovieCategory.nowPlaying:
            emitter(Loaded(nowPlayingMovies: movies));
        }
      }
    }

    Future<void> fetchMovieList(MovieCategory category) async {
      //simulate a little delay for better visual experience
      await Future<void>.delayed(const Duration(milliseconds: 500));

      try {
        final movies = await _getMovieByCategoryUseCase.execute(category, 1);
        emit(category, movies);
      } catch (e) {
        final currentState = state;

        if (currentState is Loaded) {
          switch (category) {
            case MovieCategory.popular:
              emitter(
                currentState.copyWith(
                  popularListError: e.errorMessage,
                  isPopularListLoading: false,
                ),
              );
            case MovieCategory.topRated:
              emitter(
                currentState.copyWith(
                  topRatedListError: e.errorMessage,
                  isTopRatedListLoading: false,
                ),
              );
            case MovieCategory.upcoming:
              emitter(
                currentState.copyWith(
                  upcomingListError: e.errorMessage,
                  isUpcomingListLoading: false,
                ),
              );
            case MovieCategory.nowPlaying:
              emitter(
                currentState.copyWith(
                  nowPlayingListError: e.errorMessage,
                  isNowPlayingListLoading: false,
                ),
              );
          }
        }
      }
    }

    try {
      final nowPlayingMovies = fetchMovieList(MovieCategory.nowPlaying);
      final popularMovies = fetchMovieList(MovieCategory.popular);
      final topRatedMovies = fetchMovieList(MovieCategory.topRated);
      final upcomingMovies = fetchMovieList(MovieCategory.upcoming);

      final requests = [
        nowPlayingMovies,
        popularMovies,
        topRatedMovies,
        upcomingMovies,
      ];

      await Future.wait(requests);
    } catch (e) {
      emitter(
        Error(
          message: e.errorMessage,
        ),
      );
    }
  }

  FutureOr<void> _handleRefresh(
    Refresh event,
    Emitter<HomeState> emitter,
  ) async {
    add(const Init());
  }
}
