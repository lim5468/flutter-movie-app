import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movie_credits_response.freezed.dart';
part 'get_movie_credits_response.g.dart';

@freezed
class GetMovieCreditsResponse with _$GetMovieCreditsResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetMovieCreditsResponse({
    @JsonKey(name: 'cast') @Default([]) List<Cast> list,
  }) = _GetMovieCreditsResponse;

  factory GetMovieCreditsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMovieCreditsResponseFromJson(json);
}

@freezed
class Cast with _$Cast {
  @JsonSerializable(explicitToJson: true)
  const factory Cast({
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'profile_path') required String? profilePath,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}
