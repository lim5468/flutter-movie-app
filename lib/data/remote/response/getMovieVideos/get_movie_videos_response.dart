import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/constants.dart';

part 'get_movie_videos_response.freezed.dart';
part 'get_movie_videos_response.g.dart';

@freezed
class GetMovieVideosResponse with _$GetMovieVideosResponse {
  @JsonSerializable(explicitToJson: true)
  const factory GetMovieVideosResponse({
    @JsonKey(name: 'results') @Default([]) List<Video> list,
  }) = _GetMovieVideosResponse;

  factory GetMovieVideosResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMovieVideosResponseFromJson(json);
}

@freezed
class Video with _$Video {
  @JsonSerializable(explicitToJson: true)
  const factory Video({
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'site') required String? site,
    @JsonKey(name: 'key') required String? key,
  }) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

extension VideoExt on Video {
  String get thumbnailUrl => Constants.youtubeVideoThumbnailUrlTemplate
      .replaceAll('{videoId}', key ?? '');
}
