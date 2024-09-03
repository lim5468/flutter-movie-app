// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_category_listing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieCategoryListingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCategoryListingStateCopyWith<$Res> {
  factory $MovieCategoryListingStateCopyWith(MovieCategoryListingState value,
          $Res Function(MovieCategoryListingState) then) =
      _$MovieCategoryListingStateCopyWithImpl<$Res, MovieCategoryListingState>;
}

/// @nodoc
class _$MovieCategoryListingStateCopyWithImpl<$Res,
        $Val extends MovieCategoryListingState>
    implements $MovieCategoryListingStateCopyWith<$Res> {
  _$MovieCategoryListingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MovieCategoryListingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MovieCategoryListingState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MovieCategoryListingState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MovieCategoryListingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MovieCategoryListingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MovieCategoryListingState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {MovieCategory movieCategory,
      bool isMovieListLoading,
      String? movieListError,
      List<Movie> movies,
      int? lastFetchMoviesSize,
      int? lastFetchMoviesPage});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MovieCategoryListingStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieCategory = null,
    Object? isMovieListLoading = null,
    Object? movieListError = freezed,
    Object? movies = null,
    Object? lastFetchMoviesSize = freezed,
    Object? lastFetchMoviesPage = freezed,
  }) {
    return _then(_$LoadedImpl(
      movieCategory: null == movieCategory
          ? _value.movieCategory
          : movieCategory // ignore: cast_nullable_to_non_nullable
              as MovieCategory,
      isMovieListLoading: null == isMovieListLoading
          ? _value.isMovieListLoading
          : isMovieListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      movieListError: freezed == movieListError
          ? _value.movieListError
          : movieListError // ignore: cast_nullable_to_non_nullable
              as String?,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      lastFetchMoviesSize: freezed == lastFetchMoviesSize
          ? _value.lastFetchMoviesSize
          : lastFetchMoviesSize // ignore: cast_nullable_to_non_nullable
              as int?,
      lastFetchMoviesPage: freezed == lastFetchMoviesPage
          ? _value.lastFetchMoviesPage
          : lastFetchMoviesPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      {required this.movieCategory,
      this.isMovieListLoading = false,
      this.movieListError,
      final List<Movie> movies = const [],
      this.lastFetchMoviesSize,
      this.lastFetchMoviesPage})
      : _movies = movies;

  @override
  final MovieCategory movieCategory;
  @override
  @JsonKey()
  final bool isMovieListLoading;
  @override
  final String? movieListError;
  final List<Movie> _movies;
  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final int? lastFetchMoviesSize;
  @override
  final int? lastFetchMoviesPage;

  @override
  String toString() {
    return 'MovieCategoryListingState.loaded(movieCategory: $movieCategory, isMovieListLoading: $isMovieListLoading, movieListError: $movieListError, movies: $movies, lastFetchMoviesSize: $lastFetchMoviesSize, lastFetchMoviesPage: $lastFetchMoviesPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.movieCategory, movieCategory) ||
                other.movieCategory == movieCategory) &&
            (identical(other.isMovieListLoading, isMovieListLoading) ||
                other.isMovieListLoading == isMovieListLoading) &&
            (identical(other.movieListError, movieListError) ||
                other.movieListError == movieListError) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.lastFetchMoviesSize, lastFetchMoviesSize) ||
                other.lastFetchMoviesSize == lastFetchMoviesSize) &&
            (identical(other.lastFetchMoviesPage, lastFetchMoviesPage) ||
                other.lastFetchMoviesPage == lastFetchMoviesPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      movieCategory,
      isMovieListLoading,
      movieListError,
      const DeepCollectionEquality().hash(_movies),
      lastFetchMoviesSize,
      lastFetchMoviesPage);

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(movieCategory, isMovieListLoading, movieListError, movies,
        lastFetchMoviesSize, lastFetchMoviesPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(movieCategory, isMovieListLoading, movieListError,
        movies, lastFetchMoviesSize, lastFetchMoviesPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movieCategory, isMovieListLoading, movieListError, movies,
          lastFetchMoviesSize, lastFetchMoviesPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MovieCategoryListingState {
  const factory Loaded(
      {required final MovieCategory movieCategory,
      final bool isMovieListLoading,
      final String? movieListError,
      final List<Movie> movies,
      final int? lastFetchMoviesSize,
      final int? lastFetchMoviesPage}) = _$LoadedImpl;

  MovieCategory get movieCategory;
  bool get isMovieListLoading;
  String? get movieListError;
  List<Movie> get movies;
  int? get lastFetchMoviesSize;
  int? get lastFetchMoviesPage;

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$MovieCategoryListingStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MovieCategoryListingState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            MovieCategory movieCategory,
            bool isMovieListLoading,
            String? movieListError,
            List<Movie> movies,
            int? lastFetchMoviesSize,
            int? lastFetchMoviesPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements MovieCategoryListingState {
  const factory Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of MovieCategoryListingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
