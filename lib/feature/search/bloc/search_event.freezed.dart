// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) updateQuery,
    required TResult Function(int page) fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? updateQuery,
    TResult? Function(int page)? fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? updateQuery,
    TResult Function(int page)? fetchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(UpdateQuery value) updateQuery,
    required TResult Function(FetchPage value) fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(UpdateQuery value)? updateQuery,
    TResult? Function(FetchPage value)? fetchPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(UpdateQuery value)? updateQuery,
    TResult Function(FetchPage value)? fetchPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'SearchEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) updateQuery,
    required TResult Function(int page) fetchPage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? updateQuery,
    TResult? Function(int page)? fetchPage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? updateQuery,
    TResult Function(int page)? fetchPage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(UpdateQuery value) updateQuery,
    required TResult Function(FetchPage value) fetchPage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(UpdateQuery value)? updateQuery,
    TResult? Function(FetchPage value)? fetchPage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(UpdateQuery value)? updateQuery,
    TResult Function(FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SearchEvent {
  const factory Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$UpdateQueryImplCopyWith<$Res> {
  factory _$$UpdateQueryImplCopyWith(
          _$UpdateQueryImpl value, $Res Function(_$UpdateQueryImpl) then) =
      __$$UpdateQueryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$UpdateQueryImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$UpdateQueryImpl>
    implements _$$UpdateQueryImplCopyWith<$Res> {
  __$$UpdateQueryImplCopyWithImpl(
      _$UpdateQueryImpl _value, $Res Function(_$UpdateQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$UpdateQueryImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateQueryImpl implements UpdateQuery {
  const _$UpdateQueryImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.updateQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQueryImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQueryImplCopyWith<_$UpdateQueryImpl> get copyWith =>
      __$$UpdateQueryImplCopyWithImpl<_$UpdateQueryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) updateQuery,
    required TResult Function(int page) fetchPage,
  }) {
    return updateQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? updateQuery,
    TResult? Function(int page)? fetchPage,
  }) {
    return updateQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? updateQuery,
    TResult Function(int page)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateQuery != null) {
      return updateQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(UpdateQuery value) updateQuery,
    required TResult Function(FetchPage value) fetchPage,
  }) {
    return updateQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(UpdateQuery value)? updateQuery,
    TResult? Function(FetchPage value)? fetchPage,
  }) {
    return updateQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(UpdateQuery value)? updateQuery,
    TResult Function(FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (updateQuery != null) {
      return updateQuery(this);
    }
    return orElse();
  }
}

abstract class UpdateQuery implements SearchEvent {
  const factory UpdateQuery({required final String query}) = _$UpdateQueryImpl;

  String get query;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateQueryImplCopyWith<_$UpdateQueryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchPageImplCopyWith<$Res> {
  factory _$$FetchPageImplCopyWith(
          _$FetchPageImpl value, $Res Function(_$FetchPageImpl) then) =
      __$$FetchPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$FetchPageImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$FetchPageImpl>
    implements _$$FetchPageImplCopyWith<$Res> {
  __$$FetchPageImplCopyWithImpl(
      _$FetchPageImpl _value, $Res Function(_$FetchPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$FetchPageImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchPageImpl implements FetchPage {
  const _$FetchPageImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'SearchEvent.fetchPage(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchPageImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchPageImplCopyWith<_$FetchPageImpl> get copyWith =>
      __$$FetchPageImplCopyWithImpl<_$FetchPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String query) updateQuery,
    required TResult Function(int page) fetchPage,
  }) {
    return fetchPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String query)? updateQuery,
    TResult? Function(int page)? fetchPage,
  }) {
    return fetchPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String query)? updateQuery,
    TResult Function(int page)? fetchPage,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(UpdateQuery value) updateQuery,
    required TResult Function(FetchPage value) fetchPage,
  }) {
    return fetchPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(UpdateQuery value)? updateQuery,
    TResult? Function(FetchPage value)? fetchPage,
  }) {
    return fetchPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(UpdateQuery value)? updateQuery,
    TResult Function(FetchPage value)? fetchPage,
    required TResult orElse(),
  }) {
    if (fetchPage != null) {
      return fetchPage(this);
    }
    return orElse();
  }
}

abstract class FetchPage implements SearchEvent {
  const factory FetchPage({required final int page}) = _$FetchPageImpl;

  int get page;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchPageImplCopyWith<_$FetchPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
