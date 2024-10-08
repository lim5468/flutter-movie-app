import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/constants.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  @JsonSerializable(explicitToJson: true)
  const factory Movie({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'release_date') required String? releaseDate,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

extension MovieExt on Movie {
  String get posterUrl => '${Constants.movieDbPosterImageBaseUrl}$posterPath';
}
