import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

part 'discover_event.freezed.dart';

@freezed
sealed class DiscoverEvent with _$DiscoverEvent {
  const factory DiscoverEvent.init() = Init;

  const factory DiscoverEvent.fetchMovieGenreList() = FetchMovieGenreList;

  const factory DiscoverEvent.fetchMovieList({
    @Default(1) int page,
  }) = FetchMovieList;

  const factory DiscoverEvent.setMovieGenres(
      {required List<MovieGenre> movieGenres}) = SetMovieGenres;

  const factory DiscoverEvent.refresh() = Refresh;
}
