// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_genre_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetMovieGenreListResponseImpl _$$GetMovieGenreListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetMovieGenreListResponseImpl(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => MovieGenre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GetMovieGenreListResponseImplToJson(
        _$GetMovieGenreListResponseImpl instance) =>
    <String, dynamic>{
      'genres': instance.genres.map((e) => e.toJson()).toList(),
    };
