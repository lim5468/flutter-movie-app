import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/usecase/get_movie_casts_usecase.dart';
import 'package:movie_app/domain/usecase/get_movie_details_usecase.dart';
import 'package:movie_app/domain/usecase/get_movie_posters_usecase.dart';
import 'package:movie_app/domain/usecase/get_movie_videos_usecase.dart';
import 'package:movie_app/utils/extensions/error_helper.dart';

import 'movie_details_event.dart';
import 'movie_details_state.dart';

@injectable
class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(
    this._getMovieDetailsUseCase,
    this._getMoviePostersUseCase,
    this._getMovieVideosUseCase,
    this._getMovieCastsUseCase,
  ) : super(const Initial()) {
    on<Init>(_handleInit);
    on<Refresh>(_handleRefresh, transformer: restartable());
  }

  final GetMovieDetailsUseCase _getMovieDetailsUseCase;
  final GetMoviePostersUseCase _getMoviePostersUseCase;
  final GetMovieVideosUseCase _getMovieVideosUseCase;
  final GetMovieCastsUseCase _getMovieCastsUseCase;

  late final int movieId;

  FutureOr<void> _handleInit(
    Init event,
    Emitter<MovieDetailsState> emitter,
  ) async {
    movieId = event.movieId;
    await _fetchMovieDetails(emitter);
  }

  FutureOr<void> _handleRefresh(
    Refresh event,
    Emitter<MovieDetailsState> emitter,
  ) async {
    await _fetchMovieDetails(emitter);
  }

  FutureOr<void> _fetchMovieDetails(
    Emitter<MovieDetailsState> emitter,
  ) async {
    final movieIdString = movieId.toString();

    emitter(const Loading());

    Future<void> fetchMovieDetails() async {
      //simulate a little delay for better visual experience
      await Future<void>.delayed(const Duration(milliseconds: 500));

      final movie = await _getMovieDetailsUseCase.execute(movieIdString);
      emitter(
        Loaded(
          movieDetails: movie,
          isCastLoading: true,
          isImagesLoading: true,
          isVideosLoading: true,
        ),
      );
    }

    Future<void> fetchMovieImages() async {
      try {
        //simulate a little delay for better visual experience
        await Future<void>.delayed(const Duration(milliseconds: 500));

        final images = await _getMoviePostersUseCase.execute(movieIdString);
        final filteredImages = images.take(5).toList();

        final currentState = state;

        if (currentState is Loaded) {
          emitter(
            currentState.copyWith(
              images: filteredImages,
              isImagesLoading: false,
              isImagesListError: null,
            ),
          );
        }
      } catch (e) {
        final currentState = state;

        if (currentState is Loaded) {
          emitter(
            currentState.copyWith(
              isImagesLoading: false,
              isImagesListError: e.errorMessage,
            ),
          );
        }
      }
    }

    Future<void> fetchMovieVideos() async {
      try {
        //simulate a little delay for better visual experience
        await Future<void>.delayed(const Duration(milliseconds: 500));

        final videos = await _getMovieVideosUseCase.execute(movieIdString);
        final youtubeVideos = videos
            .where(
              (item) =>
                  item.site?.toLowerCase() == 'youtube' &&
                  (item.key?.isNotEmpty ?? false),
            )
            .toList();

        final currentState = state;

        if (currentState is Loaded) {
          emitter(
            currentState.copyWith(
              videos: youtubeVideos,
              isVideosLoading: false,
              isVideosListError: null,
            ),
          );
        }
      } catch (e) {
        final currentState = state;

        if (currentState is Loaded) {
          emitter(
            currentState.copyWith(
              isVideosLoading: false,
              isVideosListError: e.errorMessage,
            ),
          );
        }
      }
    }

    Future<void> fetchMovieCast() async {
      try {
        //simulate a little delay for better visual experience
        await Future<void>.delayed(const Duration(milliseconds: 500));

        final cast = await _getMovieCastsUseCase.execute(movieIdString);

        final currentState = state;

        if (currentState is Loaded) {
          emitter(
            currentState.copyWith(
              cast: cast,
              isCastLoading: false,
              isCastListError: null,
            ),
          );
        }
      } catch (e) {
        final currentState = state;

        if (currentState is Loaded) {
          emitter(
            currentState.copyWith(
              isCastLoading: false,
              isCastListError: e.errorMessage,
            ),
          );
        }
      }
    }

    try {
      await fetchMovieDetails();

      final movieImages = fetchMovieImages();
      final movieVideos = fetchMovieVideos();
      final movieCast = fetchMovieCast();

      final requests = [
        movieImages,
        movieVideos,
        movieCast,
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
}
