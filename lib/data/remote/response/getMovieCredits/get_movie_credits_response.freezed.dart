// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_credits_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMovieCreditsResponse _$GetMovieCreditsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetMovieCreditsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMovieCreditsResponse {
  @JsonKey(name: 'cast')
  List<Cast> get list => throw _privateConstructorUsedError;

  /// Serializes this GetMovieCreditsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMovieCreditsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMovieCreditsResponseCopyWith<GetMovieCreditsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieCreditsResponseCopyWith<$Res> {
  factory $GetMovieCreditsResponseCopyWith(GetMovieCreditsResponse value,
          $Res Function(GetMovieCreditsResponse) then) =
      _$GetMovieCreditsResponseCopyWithImpl<$Res, GetMovieCreditsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'cast') List<Cast> list});
}

/// @nodoc
class _$GetMovieCreditsResponseCopyWithImpl<$Res,
        $Val extends GetMovieCreditsResponse>
    implements $GetMovieCreditsResponseCopyWith<$Res> {
  _$GetMovieCreditsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMovieCreditsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMovieCreditsResponseImplCopyWith<$Res>
    implements $GetMovieCreditsResponseCopyWith<$Res> {
  factory _$$GetMovieCreditsResponseImplCopyWith(
          _$GetMovieCreditsResponseImpl value,
          $Res Function(_$GetMovieCreditsResponseImpl) then) =
      __$$GetMovieCreditsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cast') List<Cast> list});
}

/// @nodoc
class __$$GetMovieCreditsResponseImplCopyWithImpl<$Res>
    extends _$GetMovieCreditsResponseCopyWithImpl<$Res,
        _$GetMovieCreditsResponseImpl>
    implements _$$GetMovieCreditsResponseImplCopyWith<$Res> {
  __$$GetMovieCreditsResponseImplCopyWithImpl(
      _$GetMovieCreditsResponseImpl _value,
      $Res Function(_$GetMovieCreditsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMovieCreditsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$GetMovieCreditsResponseImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GetMovieCreditsResponseImpl implements _GetMovieCreditsResponse {
  const _$GetMovieCreditsResponseImpl(
      {@JsonKey(name: 'cast') final List<Cast> list = const []})
      : _list = list;

  factory _$GetMovieCreditsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMovieCreditsResponseImplFromJson(json);

  final List<Cast> _list;
  @override
  @JsonKey(name: 'cast')
  List<Cast> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'GetMovieCreditsResponse(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieCreditsResponseImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of GetMovieCreditsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieCreditsResponseImplCopyWith<_$GetMovieCreditsResponseImpl>
      get copyWith => __$$GetMovieCreditsResponseImplCopyWithImpl<
          _$GetMovieCreditsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMovieCreditsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMovieCreditsResponse implements GetMovieCreditsResponse {
  const factory _GetMovieCreditsResponse(
          {@JsonKey(name: 'cast') final List<Cast> list}) =
      _$GetMovieCreditsResponseImpl;

  factory _GetMovieCreditsResponse.fromJson(Map<String, dynamic> json) =
      _$GetMovieCreditsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'cast')
  List<Cast> get list;

  /// Create a copy of GetMovieCreditsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieCreditsResponseImplCopyWith<_$GetMovieCreditsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;

  /// Serializes this Cast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastImplCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$CastImplCopyWith(
          _$CastImpl value, $Res Function(_$CastImpl) then) =
      __$$CastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'profile_path') String? profilePath});
}

/// @nodoc
class __$$CastImplCopyWithImpl<$Res>
    extends _$CastCopyWithImpl<$Res, _$CastImpl>
    implements _$$CastImplCopyWith<$Res> {
  __$$CastImplCopyWithImpl(_$CastImpl _value, $Res Function(_$CastImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$CastImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CastImpl implements _Cast {
  const _$CastImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'profile_path') required this.profilePath});

  factory _$CastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;

  @override
  String toString() {
    return 'Cast(name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, profilePath);

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      __$$CastImplCopyWithImpl<_$CastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastImplToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
          {@JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'profile_path') required final String? profilePath}) =
      _$CastImpl;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$CastImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
