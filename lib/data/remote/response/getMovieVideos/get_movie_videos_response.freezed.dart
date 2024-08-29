// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_videos_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMovieVideosResponse _$GetMovieVideosResponseFromJson(
    Map<String, dynamic> json) {
  return _GetMovieVideosResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMovieVideosResponse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<Video> get list => throw _privateConstructorUsedError;

  /// Serializes this GetMovieVideosResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMovieVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMovieVideosResponseCopyWith<GetMovieVideosResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieVideosResponseCopyWith<$Res> {
  factory $GetMovieVideosResponseCopyWith(GetMovieVideosResponse value,
          $Res Function(GetMovieVideosResponse) then) =
      _$GetMovieVideosResponseCopyWithImpl<$Res, GetMovieVideosResponse>;
  @useResult
  $Res call({int id, @JsonKey(name: 'results') List<Video> list});
}

/// @nodoc
class _$GetMovieVideosResponseCopyWithImpl<$Res,
        $Val extends GetMovieVideosResponse>
    implements $GetMovieVideosResponseCopyWith<$Res> {
  _$GetMovieVideosResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMovieVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMovieVideosResponseImplCopyWith<$Res>
    implements $GetMovieVideosResponseCopyWith<$Res> {
  factory _$$GetMovieVideosResponseImplCopyWith(
          _$GetMovieVideosResponseImpl value,
          $Res Function(_$GetMovieVideosResponseImpl) then) =
      __$$GetMovieVideosResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'results') List<Video> list});
}

/// @nodoc
class __$$GetMovieVideosResponseImplCopyWithImpl<$Res>
    extends _$GetMovieVideosResponseCopyWithImpl<$Res,
        _$GetMovieVideosResponseImpl>
    implements _$$GetMovieVideosResponseImplCopyWith<$Res> {
  __$$GetMovieVideosResponseImplCopyWithImpl(
      _$GetMovieVideosResponseImpl _value,
      $Res Function(_$GetMovieVideosResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMovieVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_$GetMovieVideosResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Video>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GetMovieVideosResponseImpl implements _GetMovieVideosResponse {
  const _$GetMovieVideosResponseImpl(
      {required this.id,
      @JsonKey(name: 'results') final List<Video> list = const []})
      : _list = list;

  factory _$GetMovieVideosResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMovieVideosResponseImplFromJson(json);

  @override
  final int id;
  final List<Video> _list;
  @override
  @JsonKey(name: 'results')
  List<Video> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GetMovieVideosResponse(id: $id, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieVideosResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_list));

  /// Create a copy of GetMovieVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieVideosResponseImplCopyWith<_$GetMovieVideosResponseImpl>
      get copyWith => __$$GetMovieVideosResponseImplCopyWithImpl<
          _$GetMovieVideosResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMovieVideosResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMovieVideosResponse implements GetMovieVideosResponse {
  const factory _GetMovieVideosResponse(
          {required final int id,
          @JsonKey(name: 'results') final List<Video> list}) =
      _$GetMovieVideosResponseImpl;

  factory _GetMovieVideosResponse.fromJson(Map<String, dynamic> json) =
      _$GetMovieVideosResponseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'results')
  List<Video> get list;

  /// Create a copy of GetMovieVideosResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieVideosResponseImplCopyWith<_$GetMovieVideosResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return _Video.fromJson(json);
}

/// @nodoc
mixin _$Video {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'site')
  String? get site => throw _privateConstructorUsedError;
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;

  /// Serializes this Video to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoCopyWith<Video> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCopyWith<$Res> {
  factory $VideoCopyWith(Video value, $Res Function(Video) then) =
      _$VideoCopyWithImpl<$Res, Video>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'key') String? key});
}

/// @nodoc
class _$VideoCopyWithImpl<$Res, $Val extends Video>
    implements $VideoCopyWith<$Res> {
  _$VideoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? site = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoImplCopyWith<$Res> implements $VideoCopyWith<$Res> {
  factory _$$VideoImplCopyWith(
          _$VideoImpl value, $Res Function(_$VideoImpl) then) =
      __$$VideoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'key') String? key});
}

/// @nodoc
class __$$VideoImplCopyWithImpl<$Res>
    extends _$VideoCopyWithImpl<$Res, _$VideoImpl>
    implements _$$VideoImplCopyWith<$Res> {
  __$$VideoImplCopyWithImpl(
      _$VideoImpl _value, $Res Function(_$VideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? site = freezed,
    Object? key = freezed,
  }) {
    return _then(_$VideoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$VideoImpl implements _Video {
  const _$VideoImpl(
      {required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'site') required this.site,
      @JsonKey(name: 'key') required this.key});

  factory _$VideoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'site')
  final String? site;
  @override
  @JsonKey(name: 'key')
  final String? key;

  @override
  String toString() {
    return 'Video(id: $id, name: $name, site: $site, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, site, key);

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      __$$VideoImplCopyWithImpl<_$VideoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoImplToJson(
      this,
    );
  }
}

abstract class _Video implements Video {
  const factory _Video(
      {required final int id,
      @JsonKey(name: 'name') required final String? name,
      @JsonKey(name: 'site') required final String? site,
      @JsonKey(name: 'key') required final String? key}) = _$VideoImpl;

  factory _Video.fromJson(Map<String, dynamic> json) = _$VideoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'site')
  String? get site;
  @override
  @JsonKey(name: 'key')
  String? get key;

  /// Create a copy of Video
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoImplCopyWith<_$VideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
