import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/model/movie/movie.dart';

part 'search_state.freezed.dart';

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;

  const factory SearchState.loading() = Loading;

  const factory SearchState.loaded({
    @Default(false) bool isSearching,
    String? searchError,
    String? currentQuery,
    @Default([]) List<Movie> movies,
    @Default([]) List<String> queryHistory,
    int? lastSearchResultsSize,
    int? lastSearchResultsPage,
  }) = Loaded;

  const factory SearchState.error({required String message}) = Error;
}
