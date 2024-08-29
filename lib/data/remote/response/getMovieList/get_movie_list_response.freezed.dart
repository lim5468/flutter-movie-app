// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMovieListResponse _$GetMovieListResponseFromJson(Map<String, dynamic> json) {
  return _GetMovieListResponse.fromJson(json);
}

/// @nodoc
mixin _$GetMovieListResponse {
  @JsonKey(name: 'results')
  List<Movie> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;

  /// Serializes this GetMovieListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetMovieListResponseCopyWith<GetMovieListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieListResponseCopyWith<$Res> {
  factory $GetMovieListResponseCopyWith(GetMovieListResponse value,
          $Res Function(GetMovieListResponse) then) =
      _$GetMovieListResponseCopyWithImpl<$Res, GetMovieListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<Movie> results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'page') int? page});
}

/// @nodoc
class _$GetMovieListResponseCopyWithImpl<$Res,
        $Val extends GetMovieListResponse>
    implements $GetMovieListResponseCopyWith<$Res> {
  _$GetMovieListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalPages = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMovieListResponseImplCopyWith<$Res>
    implements $GetMovieListResponseCopyWith<$Res> {
  factory _$$GetMovieListResponseImplCopyWith(_$GetMovieListResponseImpl value,
          $Res Function(_$GetMovieListResponseImpl) then) =
      __$$GetMovieListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results') List<Movie> results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'page') int? page});
}

/// @nodoc
class __$$GetMovieListResponseImplCopyWithImpl<$Res>
    extends _$GetMovieListResponseCopyWithImpl<$Res, _$GetMovieListResponseImpl>
    implements _$$GetMovieListResponseImplCopyWith<$Res> {
  __$$GetMovieListResponseImplCopyWithImpl(_$GetMovieListResponseImpl _value,
      $Res Function(_$GetMovieListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? totalPages = freezed,
    Object? page = freezed,
  }) {
    return _then(_$GetMovieListResponseImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$GetMovieListResponseImpl implements _GetMovieListResponse {
  const _$GetMovieListResponseImpl(
      {@JsonKey(name: 'results') final List<Movie> results = const [],
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'page') required this.page})
      : _results = results;

  factory _$GetMovieListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetMovieListResponseImplFromJson(json);

  final List<Movie> _results;
  @override
  @JsonKey(name: 'results')
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'page')
  final int? page;

  @override
  String toString() {
    return 'GetMovieListResponse(results: $results, totalPages: $totalPages, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieListResponseImpl &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_results), totalPages, page);

  /// Create a copy of GetMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMovieListResponseImplCopyWith<_$GetMovieListResponseImpl>
      get copyWith =>
          __$$GetMovieListResponseImplCopyWithImpl<_$GetMovieListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMovieListResponseImplToJson(
      this,
    );
  }
}

abstract class _GetMovieListResponse implements GetMovieListResponse {
  const factory _GetMovieListResponse(
          {@JsonKey(name: 'results') final List<Movie> results,
          @JsonKey(name: 'total_pages') required final int? totalPages,
          @JsonKey(name: 'page') required final int? page}) =
      _$GetMovieListResponseImpl;

  factory _GetMovieListResponse.fromJson(Map<String, dynamic> json) =
      _$GetMovieListResponseImpl.fromJson;

  @override
  @JsonKey(name: 'results')
  List<Movie> get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'page')
  int? get page;

  /// Create a copy of GetMovieListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMovieListResponseImplCopyWith<_$GetMovieListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
