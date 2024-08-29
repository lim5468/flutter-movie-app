import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movie_images_response.freezed.dart';
part 'get_movie_images_response.g.dart';

@freezed
class GetMovieImagesResponse with _$GetMovieImagesResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetMovieImagesResponse({
    required int id,
    @JsonKey(name: 'backdrops') @Default([]) List<MovieImage> backdrops,
    @JsonKey(name: 'posters') @Default([]) List<MovieImage> posters,
    @JsonKey(name: 'logos') @Default([]) List<MovieImage> logos,
  }) = _GetMovieImagesResponse;

  factory GetMovieImagesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMovieImagesResponseFromJson(json);
}

@freezed
class MovieImage with _$MovieImage {
  @JsonSerializable(explicitToJson: true)
  const factory MovieImage({
    required int id,
    @JsonKey(name: 'aspect_ratio') required int? aspectRatio,
    @JsonKey(name: 'height') required int? height,
    @JsonKey(name: 'width') required int? width,
    @JsonKey(name: 'file_path') required String? filePath,
  }) = _MovieImage;

  factory MovieImage.fromJson(Map<String, dynamic> json) =>
      _$MovieImageFromJson(json);
}
