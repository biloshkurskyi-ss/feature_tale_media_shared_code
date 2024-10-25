// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tale_media_element_list_io_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaleMediaElementListIoEvent {
  String get taleMediaId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taleMediaId) loadElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taleMediaId)? loadElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taleMediaId)? loadElements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadElements value) loadElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadElements value)? loadElements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadElements value)? loadElements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaleMediaElementListIoEventCopyWith<TaleMediaElementListIoEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaleMediaElementListIoEventCopyWith<$Res> {
  factory $TaleMediaElementListIoEventCopyWith(
          TaleMediaElementListIoEvent value,
          $Res Function(TaleMediaElementListIoEvent) then) =
      _$TaleMediaElementListIoEventCopyWithImpl<$Res,
          TaleMediaElementListIoEvent>;
  @useResult
  $Res call({String taleMediaId});
}

/// @nodoc
class _$TaleMediaElementListIoEventCopyWithImpl<$Res,
        $Val extends TaleMediaElementListIoEvent>
    implements $TaleMediaElementListIoEventCopyWith<$Res> {
  _$TaleMediaElementListIoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taleMediaId = null,
  }) {
    return _then(_value.copyWith(
      taleMediaId: null == taleMediaId
          ? _value.taleMediaId
          : taleMediaId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadElementsImplCopyWith<$Res>
    implements $TaleMediaElementListIoEventCopyWith<$Res> {
  factory _$$LoadElementsImplCopyWith(
          _$LoadElementsImpl value, $Res Function(_$LoadElementsImpl) then) =
      __$$LoadElementsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taleMediaId});
}

/// @nodoc
class __$$LoadElementsImplCopyWithImpl<$Res>
    extends _$TaleMediaElementListIoEventCopyWithImpl<$Res, _$LoadElementsImpl>
    implements _$$LoadElementsImplCopyWith<$Res> {
  __$$LoadElementsImplCopyWithImpl(
      _$LoadElementsImpl _value, $Res Function(_$LoadElementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taleMediaId = null,
  }) {
    return _then(_$LoadElementsImpl(
      taleMediaId: null == taleMediaId
          ? _value.taleMediaId
          : taleMediaId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadElementsImpl with DiagnosticableTreeMixin implements _LoadElements {
  const _$LoadElementsImpl({required this.taleMediaId});

  @override
  final String taleMediaId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaElementListIoEvent.loadElements(taleMediaId: $taleMediaId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'TaleMediaElementListIoEvent.loadElements'))
      ..add(DiagnosticsProperty('taleMediaId', taleMediaId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadElementsImpl &&
            (identical(other.taleMediaId, taleMediaId) ||
                other.taleMediaId == taleMediaId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taleMediaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadElementsImplCopyWith<_$LoadElementsImpl> get copyWith =>
      __$$LoadElementsImplCopyWithImpl<_$LoadElementsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String taleMediaId) loadElements,
  }) {
    return loadElements(taleMediaId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String taleMediaId)? loadElements,
  }) {
    return loadElements?.call(taleMediaId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String taleMediaId)? loadElements,
    required TResult orElse(),
  }) {
    if (loadElements != null) {
      return loadElements(taleMediaId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadElements value) loadElements,
  }) {
    return loadElements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadElements value)? loadElements,
  }) {
    return loadElements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadElements value)? loadElements,
    required TResult orElse(),
  }) {
    if (loadElements != null) {
      return loadElements(this);
    }
    return orElse();
  }
}

abstract class _LoadElements implements TaleMediaElementListIoEvent {
  const factory _LoadElements({required final String taleMediaId}) =
      _$LoadElementsImpl;

  @override
  String get taleMediaId;
  @override
  @JsonKey(ignore: true)
  _$$LoadElementsImplCopyWith<_$LoadElementsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaleMediaElementListIoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaleMediaElement> elements) elements,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMediaElement> elements)? elements,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMediaElement> elements)? elements,
    TResult Function()? noConnection,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Elements value) elements,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Elements value)? elements,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Elements value)? elements,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaleMediaElementListIoStateCopyWith<$Res> {
  factory $TaleMediaElementListIoStateCopyWith(
          TaleMediaElementListIoState value,
          $Res Function(TaleMediaElementListIoState) then) =
      _$TaleMediaElementListIoStateCopyWithImpl<$Res,
          TaleMediaElementListIoState>;
}

/// @nodoc
class _$TaleMediaElementListIoStateCopyWithImpl<$Res,
        $Val extends TaleMediaElementListIoState>
    implements $TaleMediaElementListIoStateCopyWith<$Res> {
  _$TaleMediaElementListIoStateCopyWithImpl(this._value, this._then);

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
    extends _$TaleMediaElementListIoStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TaleMediaElementListIoState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TaleMediaElementListIoState.initial'));
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
    required TResult Function(List<TaleMediaElement> elements) elements,
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
    TResult? Function(List<TaleMediaElement> elements)? elements,
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
    TResult Function(List<TaleMediaElement> elements)? elements,
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
    required TResult Function(_Elements value) elements,
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
    TResult? Function(_Elements value)? elements,
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
    TResult Function(_Elements value)? elements,
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

abstract class _Initial implements TaleMediaElementListIoState {
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
    extends _$TaleMediaElementListIoStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'TaleMediaElementListIoState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'TaleMediaElementListIoState.loading'));
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
    required TResult Function(List<TaleMediaElement> elements) elements,
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
    TResult? Function(List<TaleMediaElement> elements)? elements,
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
    TResult Function(List<TaleMediaElement> elements)? elements,
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
    required TResult Function(_Elements value) elements,
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
    TResult? Function(_Elements value)? elements,
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
    TResult Function(_Elements value)? elements,
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

abstract class _Loading implements TaleMediaElementListIoState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ElementsImplCopyWith<$Res> {
  factory _$$ElementsImplCopyWith(
          _$ElementsImpl value, $Res Function(_$ElementsImpl) then) =
      __$$ElementsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TaleMediaElement> elements});
}

/// @nodoc
class __$$ElementsImplCopyWithImpl<$Res>
    extends _$TaleMediaElementListIoStateCopyWithImpl<$Res, _$ElementsImpl>
    implements _$$ElementsImplCopyWith<$Res> {
  __$$ElementsImplCopyWithImpl(
      _$ElementsImpl _value, $Res Function(_$ElementsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
  }) {
    return _then(_$ElementsImpl(
      null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<TaleMediaElement>,
    ));
  }
}

/// @nodoc

class _$ElementsImpl with DiagnosticableTreeMixin implements _Elements {
  const _$ElementsImpl(final List<TaleMediaElement> elements)
      : _elements = elements;

  final List<TaleMediaElement> _elements;
  @override
  List<TaleMediaElement> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaleMediaElementListIoState.elements(elements: $elements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaleMediaElementListIoState.elements'))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementsImpl &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ElementsImplCopyWith<_$ElementsImpl> get copyWith =>
      __$$ElementsImplCopyWithImpl<_$ElementsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TaleMediaElement> elements) elements,
    required TResult Function() noConnection,
    required TResult Function(String message) error,
  }) {
    return elements(this.elements);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TaleMediaElement> elements)? elements,
    TResult? Function()? noConnection,
    TResult? Function(String message)? error,
  }) {
    return elements?.call(this.elements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TaleMediaElement> elements)? elements,
    TResult Function()? noConnection,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (elements != null) {
      return elements(this.elements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Elements value) elements,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_Error value) error,
  }) {
    return elements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Elements value)? elements,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_Error value)? error,
  }) {
    return elements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Elements value)? elements,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (elements != null) {
      return elements(this);
    }
    return orElse();
  }
}

abstract class _Elements implements TaleMediaElementListIoState {
  const factory _Elements(final List<TaleMediaElement> elements) =
      _$ElementsImpl;

  List<TaleMediaElement> get elements;
  @JsonKey(ignore: true)
  _$$ElementsImplCopyWith<_$ElementsImpl> get copyWith =>
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
    extends _$TaleMediaElementListIoStateCopyWithImpl<$Res, _$NoConnectionImpl>
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
    return 'TaleMediaElementListIoState.noConnection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TaleMediaElementListIoState.noConnection'));
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
    required TResult Function(List<TaleMediaElement> elements) elements,
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
    TResult? Function(List<TaleMediaElement> elements)? elements,
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
    TResult Function(List<TaleMediaElement> elements)? elements,
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
    required TResult Function(_Elements value) elements,
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
    TResult? Function(_Elements value)? elements,
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
    TResult Function(_Elements value)? elements,
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

abstract class _NoConnection implements TaleMediaElementListIoState {
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
    extends _$TaleMediaElementListIoStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'TaleMediaElementListIoState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaleMediaElementListIoState.error'))
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
    required TResult Function(List<TaleMediaElement> elements) elements,
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
    TResult? Function(List<TaleMediaElement> elements)? elements,
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
    TResult Function(List<TaleMediaElement> elements)? elements,
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
    required TResult Function(_Elements value) elements,
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
    TResult? Function(_Elements value)? elements,
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
    TResult Function(_Elements value)? elements,
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

abstract class _Error implements TaleMediaElementListIoState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
