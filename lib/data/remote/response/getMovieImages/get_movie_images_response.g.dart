// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_images_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMovieImagesResponseImpl _$$GetMovieImagesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMovieImagesResponseImpl(
      backdrops: (json['backdrops'] as List<dynamic>?)
              ?.map((e) => MovieImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      posters: (json['posters'] as List<dynamic>?)
              ?.map((e) => MovieImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      logos: (json['logos'] as List<dynamic>?)
              ?.map((e) => MovieImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetMovieImagesResponseImplToJson(
        _$GetMovieImagesResponseImpl instance) =>
    <String, dynamic>{
      'backdrops': instance.backdrops.map((e) => e.toJson()).toList(),
      'posters': instance.posters.map((e) => e.toJson()).toList(),
      'logos': instance.logos.map((e) => e.toJson()).toList(),
    };

_$MovieImageImpl _$$MovieImageImplFromJson(Map<String, dynamic> json) =>
    _$MovieImageImpl(
      aspectRatio: (json['aspect_ratio'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      filePath: json['file_path'] as String?,
    );

Map<String, dynamic> _$$MovieImageImplToJson(_$MovieImageImpl instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'height': instance.height,
      'width': instance.width,
      'file_path': instance.filePath,
    };
