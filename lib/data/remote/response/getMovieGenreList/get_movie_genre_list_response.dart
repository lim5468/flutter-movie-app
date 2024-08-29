import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/model/movie_genre/movie_genre.dart';

part 'get_movie_genre_list_response.freezed.dart';
part 'get_movie_genre_list_response.g.dart';

@freezed
class GetMovieGenreListResponse with _$GetMovieGenreListResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetMovieGenreListResponse({
    @JsonKey(name: 'genres') @Default([]) List<MovieGenre> genres,
  }) = _GetMovieGenreListResponse;

  factory GetMovieGenreListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMovieGenreListResponseFromJson(json);
}
