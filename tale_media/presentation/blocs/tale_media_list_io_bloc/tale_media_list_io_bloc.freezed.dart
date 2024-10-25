// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tale_media_list_io_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaleMediaListIoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageId, PaginationToken? nextToken)
        fetchMedia,
    required TResult Function(PaginationToken? nextToken) loadMoreMedia,
    required TResult Function() refresh,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult? Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult? Function()? refresh,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult Function()? refresh,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMedia value) fetchMedia,
    required TResult Function(_LoadMoreMedia value) loadMoreMedia,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMedia value)? fetchMedia,
    TResult? Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMedia value)? fetchMedia,
    TResult Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaleMediaListIoEventCopyWith<$Res> {
  factory $TaleMediaListIoEventCopyWith(TaleMediaListIoEvent value,
          $Res Function(TaleMediaListIoEvent) then) =
      _$TaleMediaListIoEventCopyWithImpl<$Res, TaleMediaListIoEvent>;
}

/// @nodoc
class _$TaleMediaListIoEventCopyWithImpl<$Res,
        $Val extends TaleMediaListIoEvent>
    implements $TaleMediaListIoEventCopyWith<$Res> {
  _$TaleMediaListIoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchMediaImplCopyWith<$Res> {
  factory _$$FetchMediaImplCopyWith(
          _$FetchMediaImpl value, $Res Function(_$FetchMediaImpl) then) =
      __$$FetchMediaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? languageId, PaginationToken? nextToken});
}

/// @nodoc
class __$$FetchMediaImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoEventCopyWithImpl<$Res, _$FetchMediaImpl>
    implements _$$FetchMediaImplCopyWith<$Res> {
  __$$FetchMediaImplCopyWithImpl(
      _$FetchMediaImpl _value, $Res Function(_$FetchMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = freezed,
    Object? nextToken = freezed,
  }) {
    return _then(_$FetchMediaImpl(
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as String?,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as PaginationToken?,
    ));
  }
}

/// @nodoc

class _$FetchMediaImpl with DiagnosticableTreeMixin implements _FetchMedia {
  const _$FetchMediaImpl({this.languageId, this.nextToken});

  @override
  final String? languageId;
  @override
  final PaginationToken? nextToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoEvent.fetchMedia(languageId: $languageId, nextToken: $nextToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaleMediaListIoEvent.fetchMedia'))
      ..add(DiagnosticsProperty('languageId', languageId))
      ..add(DiagnosticsProperty('nextToken', nextToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchMediaImpl &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageId, nextToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchMediaImplCopyWith<_$FetchMediaImpl> get copyWith =>
      __$$FetchMediaImplCopyWithImpl<_$FetchMediaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageId, PaginationToken? nextToken)
        fetchMedia,
    required TResult Function(PaginationToken? nextToken) loadMoreMedia,
    required TResult Function() refresh,
    required TResult Function() reset,
  }) {
    return fetchMedia(languageId, nextToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult? Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult? Function()? refresh,
    TResult? Function()? reset,
  }) {
    return fetchMedia?.call(languageId, nextToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult Function()? refresh,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (fetchMedia != null) {
      return fetchMedia(languageId, nextToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMedia value) fetchMedia,
    required TResult Function(_LoadMoreMedia value) loadMoreMedia,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Reset value) reset,
  }) {
    return fetchMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMedia value)? fetchMedia,
    TResult? Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Reset value)? reset,
  }) {
    return fetchMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMedia value)? fetchMedia,
    TResult Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (fetchMedia != null) {
      return fetchMedia(this);
    }
    return orElse();
  }
}

abstract class _FetchMedia implements TaleMediaListIoEvent {
  const factory _FetchMedia(
      {final String? languageId,
      final PaginationToken? nextToken}) = _$FetchMediaImpl;

  String? get languageId;
  PaginationToken? get nextToken;
  @JsonKey(ignore: true)
  _$$FetchMediaImplCopyWith<_$FetchMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreMediaImplCopyWith<$Res> {
  factory _$$LoadMoreMediaImplCopyWith(
          _$LoadMoreMediaImpl value, $Res Function(_$LoadMoreMediaImpl) then) =
      __$$LoadMoreMediaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaginationToken? nextToken});
}

/// @nodoc
class __$$LoadMoreMediaImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoEventCopyWithImpl<$Res, _$LoadMoreMediaImpl>
    implements _$$LoadMoreMediaImplCopyWith<$Res> {
  __$$LoadMoreMediaImplCopyWithImpl(
      _$LoadMoreMediaImpl _value, $Res Function(_$LoadMoreMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextToken = freezed,
  }) {
    return _then(_$LoadMoreMediaImpl(
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as PaginationToken?,
    ));
  }
}

/// @nodoc

class _$LoadMoreMediaImpl
    with DiagnosticableTreeMixin
    implements _LoadMoreMedia {
  const _$LoadMoreMediaImpl({this.nextToken});

  @override
  final PaginationToken? nextToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoEvent.loadMoreMedia(nextToken: $nextToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaleMediaListIoEvent.loadMoreMedia'))
      ..add(DiagnosticsProperty('nextToken', nextToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreMediaImpl &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nextToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreMediaImplCopyWith<_$LoadMoreMediaImpl> get copyWith =>
      __$$LoadMoreMediaImplCopyWithImpl<_$LoadMoreMediaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageId, PaginationToken? nextToken)
        fetchMedia,
    required TResult Function(PaginationToken? nextToken) loadMoreMedia,
    required TResult Function() refresh,
    required TResult Function() reset,
  }) {
    return loadMoreMedia(nextToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult? Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult? Function()? refresh,
    TResult? Function()? reset,
  }) {
    return loadMoreMedia?.call(nextToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult Function()? refresh,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (loadMoreMedia != null) {
      return loadMoreMedia(nextToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMedia value) fetchMedia,
    required TResult Function(_LoadMoreMedia value) loadMoreMedia,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Reset value) reset,
  }) {
    return loadMoreMedia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMedia value)? fetchMedia,
    TResult? Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Reset value)? reset,
  }) {
    return loadMoreMedia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMedia value)? fetchMedia,
    TResult Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (loadMoreMedia != null) {
      return loadMoreMedia(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreMedia implements TaleMediaListIoEvent {
  const factory _LoadMoreMedia({final PaginationToken? nextToken}) =
      _$LoadMoreMediaImpl;

  PaginationToken? get nextToken;
  @JsonKey(ignore: true)
  _$$LoadMoreMediaImplCopyWith<_$LoadMoreMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl with DiagnosticableTreeMixin implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaleMediaListIoEvent.refresh'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageId, PaginationToken? nextToken)
        fetchMedia,
    required TResult Function(PaginationToken? nextToken) loadMoreMedia,
    required TResult Function() refresh,
    required TResult Function() reset,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult? Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult? Function()? refresh,
    TResult? Function()? reset,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult Function()? refresh,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMedia value) fetchMedia,
    required TResult Function(_LoadMoreMedia value) loadMoreMedia,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Reset value) reset,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMedia value)? fetchMedia,
    TResult? Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Reset value)? reset,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMedia value)? fetchMedia,
    TResult Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements TaleMediaListIoEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl with DiagnosticableTreeMixin implements _Reset {
  const _$ResetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoEvent.reset()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaleMediaListIoEvent.reset'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? languageId, PaginationToken? nextToken)
        fetchMedia,
    required TResult Function(PaginationToken? nextToken) loadMoreMedia,
    required TResult Function() refresh,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult? Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult? Function()? refresh,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? languageId, PaginationToken? nextToken)?
        fetchMedia,
    TResult Function(PaginationToken? nextToken)? loadMoreMedia,
    TResult Function()? refresh,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchMedia value) fetchMedia,
    required TResult Function(_LoadMoreMedia value) loadMoreMedia,
    required TResult Function(_Refresh value) refresh,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchMedia value)? fetchMedia,
    TResult? Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult? Function(_Refresh value)? refresh,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchMedia value)? fetchMedia,
    TResult Function(_LoadMoreMedia value)? loadMoreMedia,
    TResult Function(_Refresh value)? refresh,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements TaleMediaListIoEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$TaleMediaListIoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)
        loaded,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult Function()? noConnection,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaleMediaListIoStateCopyWith<$Res> {
  factory $TaleMediaListIoStateCopyWith(TaleMediaListIoState value,
          $Res Function(TaleMediaListIoState) then) =
      _$TaleMediaListIoStateCopyWithImpl<$Res, TaleMediaListIoState>;
}

/// @nodoc
class _$TaleMediaListIoStateCopyWithImpl<$Res,
        $Val extends TaleMediaListIoState>
    implements $TaleMediaListIoStateCopyWith<$Res> {
  _$TaleMediaListIoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaleMediaListIoState.initial'));
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
    required TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)
        loaded,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult Function()? noConnection,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TaleMediaListIoState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TaleMediaListIoState.loading'));
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
    required TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)
        loaded,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult Function()? noConnection,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TaleMediaListIoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TaleMedia> mediaItems,
      bool loadingMore,
      PaginationToken? nextToken});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaItems = null,
    Object? loadingMore = null,
    Object? nextToken = freezed,
  }) {
    return _then(_$LoadedImpl(
      mediaItems: null == mediaItems
          ? _value._mediaItems
          : mediaItems // ignore: cast_nullable_to_non_nullable
              as List<TaleMedia>,
      loadingMore: null == loadingMore
          ? _value.loadingMore
          : loadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextToken: freezed == nextToken
          ? _value.nextToken
          : nextToken // ignore: cast_nullable_to_non_nullable
              as PaginationToken?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl(
      {required final List<TaleMedia> mediaItems,
      this.loadingMore = false,
      this.nextToken})
      : _mediaItems = mediaItems;

  final List<TaleMedia> _mediaItems;
  @override
  List<TaleMedia> get mediaItems {
    if (_mediaItems is EqualUnmodifiableListView) return _mediaItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaItems);
  }

  @override
  @JsonKey()
  final bool loadingMore;
  @override
  final PaginationToken? nextToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoState.loaded(mediaItems: $mediaItems, loadingMore: $loadingMore, nextToken: $nextToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaleMediaListIoState.loaded'))
      ..add(DiagnosticsProperty('mediaItems', mediaItems))
      ..add(DiagnosticsProperty('loadingMore', loadingMore))
      ..add(DiagnosticsProperty('nextToken', nextToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._mediaItems, _mediaItems) &&
            (identical(other.loadingMore, loadingMore) ||
                other.loadingMore == loadingMore) &&
            (identical(other.nextToken, nextToken) ||
                other.nextToken == nextToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_mediaItems), loadingMore, nextToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)
        loaded,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) {
    return loaded(mediaItems, loadingMore, nextToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(mediaItems, loadingMore, nextToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult Function()? noConnection,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(mediaItems, loadingMore, nextToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements TaleMediaListIoState {
  const factory _Loaded(
      {required final List<TaleMedia> mediaItems,
      final bool loadingMore,
      final PaginationToken? nextToken}) = _$LoadedImpl;

  List<TaleMedia> get mediaItems;
  bool get loadingMore;
  PaginationToken? get nextToken;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$TaleMediaListIoStateCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoConnectionImpl with DiagnosticableTreeMixin implements _NoConnection {
  const _$NoConnectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoState.noConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TaleMediaListIoState.noConnection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)
        loaded,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult Function()? noConnection,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements TaleMediaListIoState {
  const factory _NoConnection() = _$NoConnectionImpl;
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
    extends _$TaleMediaListIoStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaListIoState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaleMediaListIoState.error'))
      ..add(DiagnosticsProperty('message', message));
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)
        loaded,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMedia> mediaItems, bool loadingMore,
            PaginationToken? nextToken)?
        loaded,
    TResult Function()? noConnection,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TaleMediaListIoState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
