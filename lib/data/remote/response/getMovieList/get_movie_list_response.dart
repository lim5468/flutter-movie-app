import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/model/movie/movie.dart';

part 'get_movie_list_response.freezed.dart';
part 'get_movie_list_response.g.dart';

@freezed
class GetMovieListResponse with _$GetMovieListResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetMovieListResponse({
    @JsonKey(name: 'results') required List<Movie> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'page') required int page,
  }) = _GetMovieListResponse;

  factory GetMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMovieListResponseFromJson(json);
}
