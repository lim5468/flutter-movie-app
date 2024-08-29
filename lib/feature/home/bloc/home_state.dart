import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/model/movie/movie.dart';

part 'home_state.freezed.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;

  const factory HomeState.loading() = Loading;

  const factory HomeState.loaded({
    @Default(false) bool isNowPlayingListLoading,
    @Default(false) bool isPopularListLoading,
    @Default(false) bool isTopRatedListLoading,
    @Default(false) bool isUpcomingListLoading,
    @Default([]) List<Movie> nowPlayingMovies,
    @Default([]) List<Movie> popularMovies,
    @Default([]) List<Movie> topRatedMovies,
    @Default([]) List<Movie> upcomingMovies,
    String? nowPlayingListError,
    String? popularListError,
    String? topRatedListError,
    String? upcomingListError,
  }) = Loaded;

  const factory HomeState.error({required String message}) = Error;
}
