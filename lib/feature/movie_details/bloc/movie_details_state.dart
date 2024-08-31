import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/data/remote/response/getMovieCredits/get_movie_credits_response.dart';
import 'package:movie_app/data/remote/response/getMovieImages/get_movie_images_response.dart';
import 'package:movie_app/data/remote/response/getMovieVideos/get_movie_videos_response.dart';
import 'package:movie_app/domain/model/movie_details/movie_details.dart';

part 'movie_details_state.freezed.dart';

@freezed
sealed class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = Initial;

  const factory MovieDetailsState.loading() = Loading;

  const factory MovieDetailsState.loaded({
    required MovieDetails movieDetails,
    @Default(false) bool isImagesLoading,
    @Default(false) bool isVideosLoading,
    @Default(false) bool isCastLoading,
    @Default([]) List<MovieImage> images,
    @Default([]) List<Video> videos,
    @Default([]) List<Cast> cast,
    String? isImagesListError,
    String? isVideosListError,
    String? isCastListError,
  }) = Loaded;

  const factory MovieDetailsState.error({required String message}) = Error;
}
