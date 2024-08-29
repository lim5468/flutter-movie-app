// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_genre_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMovieGenreListResponse _$GetMovieGenreListResponseFromJson(
    Map<String, dynamic> json) {
  return _GetMovieGenreListResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMovieGenreListResponse {
  @JsonKey(name: 'genres')
  List<MovieGenre> get genres => throw _privateConstructorUsedError;

  /// Serializes this GetMovieGenreListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMovieGenreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMovieGenreListResponseCopyWith<GetMovieGenreListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieGenreListResponseCopyWith<$Res> {
  factory $GetMovieGenreListResponseCopyWith(GetMovieGenreListResponse value,
          $Res Function(GetMovieGenreListResponse) then) =
      _$GetMovieGenreListResponseCopyWithImpl<$Res, GetMovieGenreListResponse>;
  @useResult
  $Res call({@JsonKey(name: 'genres') List<MovieGenre> genres});
}

/// @nodoc
class _$GetMovieGenreListResponseCopyWithImpl<$Res,
        $Val extends GetMovieGenreListResponse>
    implements $GetMovieGenreListResponseCopyWith<$Res> {
  _$GetMovieGenreListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMovieGenreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenre>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMovieGenreListResponseImplCopyWith<$Res>
    implements $GetMovieGenreListResponseCopyWith<$Res> {
  factory _$$GetMovieGenreListResponseImplCopyWith(
          _$GetMovieGenreListResponseImpl value,
          $Res Function(_$GetMovieGenreListResponseImpl) then) =
      __$$GetMovieGenreListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'genres') List<MovieGenre> genres});
}

/// @nodoc
class __$$GetMovieGenreListResponseImplCopyWithImpl<$Res>
    extends _$GetMovieGenreListResponseCopyWithImpl<$Res,
        _$GetMovieGenreListResponseImpl>
    implements _$$GetMovieGenreListResponseImplCopyWith<$Res> {
  __$$GetMovieGenreListResponseImplCopyWithImpl(
      _$GetMovieGenreListResponseImpl _value,
      $Res Function(_$GetMovieGenreListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMovieGenreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genres = null,
  }) {
    return _then(_$GetMovieGenreListResponseImpl(
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<MovieGenre>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GetMovieGenreListResponseImpl implements _GetMovieGenreListResponse {
  const _$GetMovieGenreListResponseImpl(
      {@JsonKey(name: 'genres') required final List<MovieGenre> genres})
      : _genres = genres;

  factory _$GetMovieGenreListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMovieGenreListResponseImplFromJson(json);

  final List<MovieGenre> _genres;
  @override
  @JsonKey(name: 'genres')
  List<MovieGenre> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'GetMovieGenreListResponse(genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieGenreListResponseImpl &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_genres));

  /// Create a copy of GetMovieGenreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieGenreListResponseImplCopyWith<_$GetMovieGenreListResponseImpl>
      get copyWith => __$$GetMovieGenreListResponseImplCopyWithImpl<
          _$GetMovieGenreListResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMovieGenreListResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMovieGenreListResponse implements GetMovieGenreListResponse {
  const factory _GetMovieGenreListResponse(
          {@JsonKey(name: 'genres') required final List<MovieGenre> genres}) =
      _$GetMovieGenreListResponseImpl;

  factory _GetMovieGenreListResponse.fromJson(Map<String, dynamic> json) =
      _$GetMovieGenreListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'genres')
  List<MovieGenre> get genres;

  /// Create a copy of GetMovieGenreListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieGenreListResponseImplCopyWith<_$GetMovieGenreListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
