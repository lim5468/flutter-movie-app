import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  @JsonSerializable(explicitToJson: true)
  const factory MovieDetails({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'backdrop_path') required String? backdropPath,
    @JsonKey(name: 'poster_path') required String? posterPath,
    @JsonKey(name: 'release_date') required String? releaseDate,
    @JsonKey(name: 'overview') required String? overview,
    @JsonKey(name: 'runtime') required int? runtime,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsFromJson(json);
}
