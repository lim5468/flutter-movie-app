// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_videos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMovieVideosResponseImpl _$$GetMovieVideosResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMovieVideosResponseImpl(
      id: (json['id'] as num).toInt(),
      list: (json['results'] as List<dynamic>)
          .map((e) => Video.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetMovieVideosResponseImplToJson(
        _$GetMovieVideosResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'results': instance.list.map((e) => e.toJson()).toList(),
    };

_$VideoImpl _$$VideoImplFromJson(Map<String, dynamic> json) => _$VideoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      site: json['site'] as String,
      key: json['key'] as String,
    );

Map<String, dynamic> _$$VideoImplToJson(_$VideoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'site': instance.site,
      'key': instance.key,
    };
