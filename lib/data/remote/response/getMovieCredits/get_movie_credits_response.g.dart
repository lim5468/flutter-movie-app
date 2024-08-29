// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_credits_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMovieCreditsResponseImpl _$$GetMovieCreditsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMovieCreditsResponseImpl(
      list: (json['cast'] as List<dynamic>?)
              ?.map((e) => Cast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetMovieCreditsResponseImplToJson(
        _$GetMovieCreditsResponseImpl instance) =>
    <String, dynamic>{
      'cast': instance.list.map((e) => e.toJson()).toList(),
    };

_$CastImpl _$$CastImplFromJson(Map<String, dynamic> json) => _$CastImpl(
      name: json['name'] as String?,
      profilePath: json['profile_path'] as String?,
    );

Map<String, dynamic> _$$CastImplToJson(_$CastImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile_path': instance.profilePath,
    };
