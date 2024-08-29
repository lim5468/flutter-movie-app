import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/model/movie/movie.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

part 'discover_state.freezed.dart';

@freezed
sealed class DiscoverState with _$DiscoverState {
  const factory DiscoverState.initial() = Initial;

  const factory DiscoverState.loading() = Loading;

  const factory DiscoverState.loaded({
    required List<MovieGenre> movieGenres,
    required List<MovieGenre> selectedMovieGenres,
    @Default(false) bool isMovieListLoading,
    String? movieGenreListError,
    String? movieListError,
    @Default([]) List<Movie> movies,
    int? lastFetchMoviesSize,
    int? lastFetchMoviesPage,
  }) = Loaded;

  const factory DiscoverState.error({required String message}) = Error;
}
