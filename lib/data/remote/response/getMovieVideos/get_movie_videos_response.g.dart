// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_videos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMovieVideosResponseImpl _$$GetMovieVideosResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMovieVideosResponseImpl(
      list: (json['results'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetMovieVideosResponseImplToJson(
        _$GetMovieVideosResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.list.map((e) => e.toJson()).toList(),
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      name: json['name'] as String?,
      site: json['site'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'site': instance.site,
      'key': instance.key,
    };
