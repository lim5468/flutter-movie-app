import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

part 'movie_category_listing_state.freezed.dart';

@freezed
sealed class MovieCategoryListingState with _$MovieCategoryListingState {
  const factory MovieCategoryListingState.initial() = Initial;

  const factory MovieCategoryListingState.loading() = Loading;

  const factory MovieCategoryListingState.loaded({
    required MovieCategory movieCategory,
    @Default(false) bool isMovieListLoading,
    String? movieListError,
    @Default([]) List<Movie> movies,
    int? lastFetchMoviesSize,
    int? lastFetchMoviesPage,
  }) = Loaded;

  const factory MovieCategoryListingState.error({required String message}) = Error;
}
