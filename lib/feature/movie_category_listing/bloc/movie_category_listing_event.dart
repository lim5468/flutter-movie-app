import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/enum/movie_category.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

part 'movie_category_listing_event.freezed.dart';

@freezed
sealed class MovieCategoryListingEvent with _$MovieCategoryListingEvent {
  const factory MovieCategoryListingEvent.init() = Init;

  const factory MovieCategoryListingEvent.fetchMovieList({
    @Default(1) int page,
    @Default(false) bool useDelay,
  }) = FetchMovieList;

  const factory MovieCategoryListingEvent.setMovieGenres(
      {required MovieCategory movieCategory}) = SetMovieCategory;

  const factory MovieCategoryListingEvent.refresh() = Refresh;
}
