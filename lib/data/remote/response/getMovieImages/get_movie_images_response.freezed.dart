// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_images_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMovieImagesResponse _$GetMovieImagesResponseFromJson(
    Map<String, dynamic> json) {
  return _GetMovieImagesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMovieImagesResponse {
  @JsonKey(name: 'backdrops')
  List<MovieImage> get backdrops => throw _privateConstructorUsedError;
  @JsonKey(name: 'posters')
  List<MovieImage> get posters => throw _privateConstructorUsedError;
  @JsonKey(name: 'logos')
  List<MovieImage> get logos => throw _privateConstructorUsedError;

  /// Serializes this GetMovieImagesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMovieImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMovieImagesResponseCopyWith<GetMovieImagesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieImagesResponseCopyWith<$Res> {
  factory $GetMovieImagesResponseCopyWith(GetMovieImagesResponse value,
          $Res Function(GetMovieImagesResponse) then) =
      _$GetMovieImagesResponseCopyWithImpl<$Res, GetMovieImagesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<MovieImage> backdrops,
      @JsonKey(name: 'posters') List<MovieImage> posters,
      @JsonKey(name: 'logos') List<MovieImage> logos});
}

/// @nodoc
class _$GetMovieImagesResponseCopyWithImpl<$Res,
        $Val extends GetMovieImagesResponse>
    implements $GetMovieImagesResponseCopyWith<$Res> {
  _$GetMovieImagesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMovieImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = null,
    Object? posters = null,
    Object? logos = null,
  }) {
    return _then(_value.copyWith(
      backdrops: null == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      posters: null == posters
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      logos: null == logos
          ? _value.logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMovieImagesResponseImplCopyWith<$Res>
    implements $GetMovieImagesResponseCopyWith<$Res> {
  factory _$$GetMovieImagesResponseImplCopyWith(
          _$GetMovieImagesResponseImpl value,
          $Res Function(_$GetMovieImagesResponseImpl) then) =
      __$$GetMovieImagesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'backdrops') List<MovieImage> backdrops,
      @JsonKey(name: 'posters') List<MovieImage> posters,
      @JsonKey(name: 'logos') List<MovieImage> logos});
}

/// @nodoc
class __$$GetMovieImagesResponseImplCopyWithImpl<$Res>
    extends _$GetMovieImagesResponseCopyWithImpl<$Res,
        _$GetMovieImagesResponseImpl>
    implements _$$GetMovieImagesResponseImplCopyWith<$Res> {
  __$$GetMovieImagesResponseImplCopyWithImpl(
      _$GetMovieImagesResponseImpl _value,
      $Res Function(_$GetMovieImagesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMovieImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backdrops = null,
    Object? posters = null,
    Object? logos = null,
  }) {
    return _then(_$GetMovieImagesResponseImpl(
      backdrops: null == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      posters: null == posters
          ? _value._posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
      logos: null == logos
          ? _value._logos
          : logos // ignore: cast_nullable_to_non_nullable
              as List<MovieImage>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GetMovieImagesResponseImpl implements _GetMovieImagesResponse {
  const _$GetMovieImagesResponseImpl(
      {@JsonKey(name: 'backdrops') final List<MovieImage> backdrops = const [],
      @JsonKey(name: 'posters') final List<MovieImage> posters = const [],
      @JsonKey(name: 'logos') final List<MovieImage> logos = const []})
      : _backdrops = backdrops,
        _posters = posters,
        _logos = logos;

  factory _$GetMovieImagesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMovieImagesResponseImplFromJson(json);

  final List<MovieImage> _backdrops;
  @override
  @JsonKey(name: 'backdrops')
  List<MovieImage> get backdrops {
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdrops);
  }

  final List<MovieImage> _posters;
  @override
  @JsonKey(name: 'posters')
  List<MovieImage> get posters {
    if (_posters is EqualUnmodifiableListView) return _posters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posters);
  }

  final List<MovieImage> _logos;
  @override
  @JsonKey(name: 'logos')
  List<MovieImage> get logos {
    if (_logos is EqualUnmodifiableListView) return _logos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_logos);
  }

  @override
  String toString() {
    return 'GetMovieImagesResponse(backdrops: $backdrops, posters: $posters, logos: $logos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieImagesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            const DeepCollectionEquality().equals(other._posters, _posters) &&
            const DeepCollectionEquality().equals(other._logos, _logos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_backdrops),
      const DeepCollectionEquality().hash(_posters),
      const DeepCollectionEquality().hash(_logos));

  /// Create a copy of GetMovieImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieImagesResponseImplCopyWith<_$GetMovieImagesResponseImpl>
      get copyWith => __$$GetMovieImagesResponseImplCopyWithImpl<
          _$GetMovieImagesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMovieImagesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMovieImagesResponse implements GetMovieImagesResponse {
  const factory _GetMovieImagesResponse(
          {@JsonKey(name: 'backdrops') final List<MovieImage> backdrops,
          @JsonKey(name: 'posters') final List<MovieImage> posters,
          @JsonKey(name: 'logos') final List<MovieImage> logos}) =
      _$GetMovieImagesResponseImpl;

  factory _GetMovieImagesResponse.fromJson(Map<String, dynamic> json) =
      _$GetMovieImagesResponseImpl.fromJson;

  @override
  @JsonKey(name: 'backdrops')
  List<MovieImage> get backdrops;
  @override
  @JsonKey(name: 'posters')
  List<MovieImage> get posters;
  @override
  @JsonKey(name: 'logos')
  List<MovieImage> get logos;

  /// Create a copy of GetMovieImagesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieImagesResponseImplCopyWith<_$GetMovieImagesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MovieImage _$MovieImageFromJson(Map<String, dynamic> json) {
  return _MovieImage.fromJson(json);
}

/// @nodoc
mixin _$MovieImage {
  @JsonKey(name: 'aspect_ratio')
  double? get aspectRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String? get filePath => throw _privateConstructorUsedError;

  /// Serializes this MovieImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieImageCopyWith<MovieImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImageCopyWith<$Res> {
  factory $MovieImageCopyWith(
          MovieImage value, $Res Function(MovieImage) then) =
      _$MovieImageCopyWithImpl<$Res, MovieImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double? aspectRatio,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'file_path') String? filePath});
}

/// @nodoc
class _$MovieImageCopyWithImpl<$Res, $Val extends MovieImage>
    implements $MovieImageCopyWith<$Res> {
  _$MovieImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImageImplCopyWith<$Res>
    implements $MovieImageCopyWith<$Res> {
  factory _$$MovieImageImplCopyWith(
          _$MovieImageImpl value, $Res Function(_$MovieImageImpl) then) =
      __$$MovieImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double? aspectRatio,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'file_path') String? filePath});
}

/// @nodoc
class __$$MovieImageImplCopyWithImpl<$Res>
    extends _$MovieImageCopyWithImpl<$Res, _$MovieImageImpl>
    implements _$$MovieImageImplCopyWith<$Res> {
  __$$MovieImageImplCopyWithImpl(
      _$MovieImageImpl _value, $Res Function(_$MovieImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? filePath = freezed,
  }) {
    return _then(_$MovieImageImpl(
      aspectRatio: freezed == aspectRatio
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      filePath: freezed == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MovieImageImpl implements _MovieImage {
  const _$MovieImageImpl(
      {@JsonKey(name: 'aspect_ratio') required this.aspectRatio,
      @JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'file_path') required this.filePath});

  factory _$MovieImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImageImplFromJson(json);

  @override
  @JsonKey(name: 'aspect_ratio')
  final double? aspectRatio;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'file_path')
  final String? filePath;

  @override
  String toString() {
    return 'MovieImage(aspectRatio: $aspectRatio, height: $height, width: $width, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImageImpl &&
            (identical(other.aspectRatio, aspectRatio) ||
                other.aspectRatio == aspectRatio) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, aspectRatio, height, width, filePath);

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImageImplCopyWith<_$MovieImageImpl> get copyWith =>
      __$$MovieImageImplCopyWithImpl<_$MovieImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImageImplToJson(
      this,
    );
  }
}

abstract class _MovieImage implements MovieImage {
  const factory _MovieImage(
          {@JsonKey(name: 'aspect_ratio') required final double? aspectRatio,
          @JsonKey(name: 'height') required final int? height,
          @JsonKey(name: 'width') required final int? width,
          @JsonKey(name: 'file_path') required final String? filePath}) =
      _$MovieImageImpl;

  factory _MovieImage.fromJson(Map<String, dynamic> json) =
      _$MovieImageImpl.fromJson;

  @override
  @JsonKey(name: 'aspect_ratio')
  double? get aspectRatio;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'file_path')
  String? get filePath;

  /// Create a copy of MovieImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImageImplCopyWith<_$MovieImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
