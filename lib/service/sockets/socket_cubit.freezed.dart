// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SocketState {
  SocketStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketStatePayload payload) initial,
    required TResult Function(SocketStatePayload payload) loading,
    required TResult Function(SocketStatePayload payload) error,
    required TResult Function(SocketStatePayload payload) occurences,
    required TResult Function(SocketStatePayload payload) casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocketStatePayload payload)? initial,
    TResult? Function(SocketStatePayload payload)? loading,
    TResult? Function(SocketStatePayload payload)? error,
    TResult? Function(SocketStatePayload payload)? occurences,
    TResult? Function(SocketStatePayload payload)? casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketStatePayload payload)? initial,
    TResult Function(SocketStatePayload payload)? loading,
    TResult Function(SocketStatePayload payload)? error,
    TResult Function(SocketStatePayload payload)? occurences,
    TResult Function(SocketStatePayload payload)? casefile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSocketState value) initial,
    required TResult Function(_LoadingSocketState value) loading,
    required TResult Function(_ErrorSocketState value) error,
    required TResult Function(_OccurencesSocketState value) occurences,
    required TResult Function(_CasefileSocketState value) casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSocketState value)? initial,
    TResult? Function(_LoadingSocketState value)? loading,
    TResult? Function(_ErrorSocketState value)? error,
    TResult? Function(_OccurencesSocketState value)? occurences,
    TResult? Function(_CasefileSocketState value)? casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSocketState value)? initial,
    TResult Function(_LoadingSocketState value)? loading,
    TResult Function(_ErrorSocketState value)? error,
    TResult Function(_OccurencesSocketState value)? occurences,
    TResult Function(_CasefileSocketState value)? casefile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketStateCopyWith<SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res, SocketState>;
  @useResult
  $Res call({SocketStatePayload payload});

  $SocketStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res, $Val extends SocketState>
    implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SocketStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SocketStatePayloadCopyWith<$Res> get payload {
    return $SocketStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialSocketStateImplCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$InitialSocketStateImplCopyWith(_$InitialSocketStateImpl value,
          $Res Function(_$InitialSocketStateImpl) then) =
      __$$InitialSocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketStatePayload payload});

  @override
  $SocketStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialSocketStateImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$InitialSocketStateImpl>
    implements _$$InitialSocketStateImplCopyWith<$Res> {
  __$$InitialSocketStateImplCopyWithImpl(_$InitialSocketStateImpl _value,
      $Res Function(_$InitialSocketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialSocketStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SocketStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialSocketStateImpl implements _InitialSocketState {
  const _$InitialSocketStateImpl({required this.payload});

  @override
  final SocketStatePayload payload;

  @override
  String toString() {
    return 'SocketState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialSocketStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialSocketStateImplCopyWith<_$InitialSocketStateImpl> get copyWith =>
      __$$InitialSocketStateImplCopyWithImpl<_$InitialSocketStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketStatePayload payload) initial,
    required TResult Function(SocketStatePayload payload) loading,
    required TResult Function(SocketStatePayload payload) error,
    required TResult Function(SocketStatePayload payload) occurences,
    required TResult Function(SocketStatePayload payload) casefile,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocketStatePayload payload)? initial,
    TResult? Function(SocketStatePayload payload)? loading,
    TResult? Function(SocketStatePayload payload)? error,
    TResult? Function(SocketStatePayload payload)? occurences,
    TResult? Function(SocketStatePayload payload)? casefile,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketStatePayload payload)? initial,
    TResult Function(SocketStatePayload payload)? loading,
    TResult Function(SocketStatePayload payload)? error,
    TResult Function(SocketStatePayload payload)? occurences,
    TResult Function(SocketStatePayload payload)? casefile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSocketState value) initial,
    required TResult Function(_LoadingSocketState value) loading,
    required TResult Function(_ErrorSocketState value) error,
    required TResult Function(_OccurencesSocketState value) occurences,
    required TResult Function(_CasefileSocketState value) casefile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSocketState value)? initial,
    TResult? Function(_LoadingSocketState value)? loading,
    TResult? Function(_ErrorSocketState value)? error,
    TResult? Function(_OccurencesSocketState value)? occurences,
    TResult? Function(_CasefileSocketState value)? casefile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSocketState value)? initial,
    TResult Function(_LoadingSocketState value)? loading,
    TResult Function(_ErrorSocketState value)? error,
    TResult Function(_OccurencesSocketState value)? occurences,
    TResult Function(_CasefileSocketState value)? casefile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialSocketState implements SocketState {
  const factory _InitialSocketState(
      {required final SocketStatePayload payload}) = _$InitialSocketStateImpl;

  @override
  SocketStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialSocketStateImplCopyWith<_$InitialSocketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingSocketStateImplCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$LoadingSocketStateImplCopyWith(_$LoadingSocketStateImpl value,
          $Res Function(_$LoadingSocketStateImpl) then) =
      __$$LoadingSocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketStatePayload payload});

  @override
  $SocketStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingSocketStateImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$LoadingSocketStateImpl>
    implements _$$LoadingSocketStateImplCopyWith<$Res> {
  __$$LoadingSocketStateImplCopyWithImpl(_$LoadingSocketStateImpl _value,
      $Res Function(_$LoadingSocketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingSocketStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SocketStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingSocketStateImpl implements _LoadingSocketState {
  const _$LoadingSocketStateImpl({required this.payload});

  @override
  final SocketStatePayload payload;

  @override
  String toString() {
    return 'SocketState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSocketStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingSocketStateImplCopyWith<_$LoadingSocketStateImpl> get copyWith =>
      __$$LoadingSocketStateImplCopyWithImpl<_$LoadingSocketStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketStatePayload payload) initial,
    required TResult Function(SocketStatePayload payload) loading,
    required TResult Function(SocketStatePayload payload) error,
    required TResult Function(SocketStatePayload payload) occurences,
    required TResult Function(SocketStatePayload payload) casefile,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocketStatePayload payload)? initial,
    TResult? Function(SocketStatePayload payload)? loading,
    TResult? Function(SocketStatePayload payload)? error,
    TResult? Function(SocketStatePayload payload)? occurences,
    TResult? Function(SocketStatePayload payload)? casefile,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketStatePayload payload)? initial,
    TResult Function(SocketStatePayload payload)? loading,
    TResult Function(SocketStatePayload payload)? error,
    TResult Function(SocketStatePayload payload)? occurences,
    TResult Function(SocketStatePayload payload)? casefile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSocketState value) initial,
    required TResult Function(_LoadingSocketState value) loading,
    required TResult Function(_ErrorSocketState value) error,
    required TResult Function(_OccurencesSocketState value) occurences,
    required TResult Function(_CasefileSocketState value) casefile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSocketState value)? initial,
    TResult? Function(_LoadingSocketState value)? loading,
    TResult? Function(_ErrorSocketState value)? error,
    TResult? Function(_OccurencesSocketState value)? occurences,
    TResult? Function(_CasefileSocketState value)? casefile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSocketState value)? initial,
    TResult Function(_LoadingSocketState value)? loading,
    TResult Function(_ErrorSocketState value)? error,
    TResult Function(_OccurencesSocketState value)? occurences,
    TResult Function(_CasefileSocketState value)? casefile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingSocketState implements SocketState {
  const factory _LoadingSocketState(
      {required final SocketStatePayload payload}) = _$LoadingSocketStateImpl;

  @override
  SocketStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingSocketStateImplCopyWith<_$LoadingSocketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSocketStateImplCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$ErrorSocketStateImplCopyWith(_$ErrorSocketStateImpl value,
          $Res Function(_$ErrorSocketStateImpl) then) =
      __$$ErrorSocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketStatePayload payload});

  @override
  $SocketStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorSocketStateImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$ErrorSocketStateImpl>
    implements _$$ErrorSocketStateImplCopyWith<$Res> {
  __$$ErrorSocketStateImplCopyWithImpl(_$ErrorSocketStateImpl _value,
      $Res Function(_$ErrorSocketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorSocketStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SocketStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorSocketStateImpl implements _ErrorSocketState {
  const _$ErrorSocketStateImpl({required this.payload});

  @override
  final SocketStatePayload payload;

  @override
  String toString() {
    return 'SocketState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSocketStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSocketStateImplCopyWith<_$ErrorSocketStateImpl> get copyWith =>
      __$$ErrorSocketStateImplCopyWithImpl<_$ErrorSocketStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketStatePayload payload) initial,
    required TResult Function(SocketStatePayload payload) loading,
    required TResult Function(SocketStatePayload payload) error,
    required TResult Function(SocketStatePayload payload) occurences,
    required TResult Function(SocketStatePayload payload) casefile,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocketStatePayload payload)? initial,
    TResult? Function(SocketStatePayload payload)? loading,
    TResult? Function(SocketStatePayload payload)? error,
    TResult? Function(SocketStatePayload payload)? occurences,
    TResult? Function(SocketStatePayload payload)? casefile,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketStatePayload payload)? initial,
    TResult Function(SocketStatePayload payload)? loading,
    TResult Function(SocketStatePayload payload)? error,
    TResult Function(SocketStatePayload payload)? occurences,
    TResult Function(SocketStatePayload payload)? casefile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSocketState value) initial,
    required TResult Function(_LoadingSocketState value) loading,
    required TResult Function(_ErrorSocketState value) error,
    required TResult Function(_OccurencesSocketState value) occurences,
    required TResult Function(_CasefileSocketState value) casefile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSocketState value)? initial,
    TResult? Function(_LoadingSocketState value)? loading,
    TResult? Function(_ErrorSocketState value)? error,
    TResult? Function(_OccurencesSocketState value)? occurences,
    TResult? Function(_CasefileSocketState value)? casefile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSocketState value)? initial,
    TResult Function(_LoadingSocketState value)? loading,
    TResult Function(_ErrorSocketState value)? error,
    TResult Function(_OccurencesSocketState value)? occurences,
    TResult Function(_CasefileSocketState value)? casefile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSocketState implements SocketState {
  const factory _ErrorSocketState({required final SocketStatePayload payload}) =
      _$ErrorSocketStateImpl;

  @override
  SocketStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorSocketStateImplCopyWith<_$ErrorSocketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OccurencesSocketStateImplCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$OccurencesSocketStateImplCopyWith(
          _$OccurencesSocketStateImpl value,
          $Res Function(_$OccurencesSocketStateImpl) then) =
      __$$OccurencesSocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketStatePayload payload});

  @override
  $SocketStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$OccurencesSocketStateImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$OccurencesSocketStateImpl>
    implements _$$OccurencesSocketStateImplCopyWith<$Res> {
  __$$OccurencesSocketStateImplCopyWithImpl(_$OccurencesSocketStateImpl _value,
      $Res Function(_$OccurencesSocketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$OccurencesSocketStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SocketStatePayload,
    ));
  }
}

/// @nodoc

class _$OccurencesSocketStateImpl implements _OccurencesSocketState {
  const _$OccurencesSocketStateImpl({required this.payload});

  @override
  final SocketStatePayload payload;

  @override
  String toString() {
    return 'SocketState.occurences(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccurencesSocketStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccurencesSocketStateImplCopyWith<_$OccurencesSocketStateImpl>
      get copyWith => __$$OccurencesSocketStateImplCopyWithImpl<
          _$OccurencesSocketStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketStatePayload payload) initial,
    required TResult Function(SocketStatePayload payload) loading,
    required TResult Function(SocketStatePayload payload) error,
    required TResult Function(SocketStatePayload payload) occurences,
    required TResult Function(SocketStatePayload payload) casefile,
  }) {
    return occurences(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocketStatePayload payload)? initial,
    TResult? Function(SocketStatePayload payload)? loading,
    TResult? Function(SocketStatePayload payload)? error,
    TResult? Function(SocketStatePayload payload)? occurences,
    TResult? Function(SocketStatePayload payload)? casefile,
  }) {
    return occurences?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketStatePayload payload)? initial,
    TResult Function(SocketStatePayload payload)? loading,
    TResult Function(SocketStatePayload payload)? error,
    TResult Function(SocketStatePayload payload)? occurences,
    TResult Function(SocketStatePayload payload)? casefile,
    required TResult orElse(),
  }) {
    if (occurences != null) {
      return occurences(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSocketState value) initial,
    required TResult Function(_LoadingSocketState value) loading,
    required TResult Function(_ErrorSocketState value) error,
    required TResult Function(_OccurencesSocketState value) occurences,
    required TResult Function(_CasefileSocketState value) casefile,
  }) {
    return occurences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSocketState value)? initial,
    TResult? Function(_LoadingSocketState value)? loading,
    TResult? Function(_ErrorSocketState value)? error,
    TResult? Function(_OccurencesSocketState value)? occurences,
    TResult? Function(_CasefileSocketState value)? casefile,
  }) {
    return occurences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSocketState value)? initial,
    TResult Function(_LoadingSocketState value)? loading,
    TResult Function(_ErrorSocketState value)? error,
    TResult Function(_OccurencesSocketState value)? occurences,
    TResult Function(_CasefileSocketState value)? casefile,
    required TResult orElse(),
  }) {
    if (occurences != null) {
      return occurences(this);
    }
    return orElse();
  }
}

abstract class _OccurencesSocketState implements SocketState {
  const factory _OccurencesSocketState(
          {required final SocketStatePayload payload}) =
      _$OccurencesSocketStateImpl;

  @override
  SocketStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$OccurencesSocketStateImplCopyWith<_$OccurencesSocketStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CasefileSocketStateImplCopyWith<$Res>
    implements $SocketStateCopyWith<$Res> {
  factory _$$CasefileSocketStateImplCopyWith(_$CasefileSocketStateImpl value,
          $Res Function(_$CasefileSocketStateImpl) then) =
      __$$CasefileSocketStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SocketStatePayload payload});

  @override
  $SocketStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CasefileSocketStateImplCopyWithImpl<$Res>
    extends _$SocketStateCopyWithImpl<$Res, _$CasefileSocketStateImpl>
    implements _$$CasefileSocketStateImplCopyWith<$Res> {
  __$$CasefileSocketStateImplCopyWithImpl(_$CasefileSocketStateImpl _value,
      $Res Function(_$CasefileSocketStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CasefileSocketStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as SocketStatePayload,
    ));
  }
}

/// @nodoc

class _$CasefileSocketStateImpl implements _CasefileSocketState {
  const _$CasefileSocketStateImpl({required this.payload});

  @override
  final SocketStatePayload payload;

  @override
  String toString() {
    return 'SocketState.casefile(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CasefileSocketStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CasefileSocketStateImplCopyWith<_$CasefileSocketStateImpl> get copyWith =>
      __$$CasefileSocketStateImplCopyWithImpl<_$CasefileSocketStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketStatePayload payload) initial,
    required TResult Function(SocketStatePayload payload) loading,
    required TResult Function(SocketStatePayload payload) error,
    required TResult Function(SocketStatePayload payload) occurences,
    required TResult Function(SocketStatePayload payload) casefile,
  }) {
    return casefile(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocketStatePayload payload)? initial,
    TResult? Function(SocketStatePayload payload)? loading,
    TResult? Function(SocketStatePayload payload)? error,
    TResult? Function(SocketStatePayload payload)? occurences,
    TResult? Function(SocketStatePayload payload)? casefile,
  }) {
    return casefile?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketStatePayload payload)? initial,
    TResult Function(SocketStatePayload payload)? loading,
    TResult Function(SocketStatePayload payload)? error,
    TResult Function(SocketStatePayload payload)? occurences,
    TResult Function(SocketStatePayload payload)? casefile,
    required TResult orElse(),
  }) {
    if (casefile != null) {
      return casefile(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialSocketState value) initial,
    required TResult Function(_LoadingSocketState value) loading,
    required TResult Function(_ErrorSocketState value) error,
    required TResult Function(_OccurencesSocketState value) occurences,
    required TResult Function(_CasefileSocketState value) casefile,
  }) {
    return casefile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialSocketState value)? initial,
    TResult? Function(_LoadingSocketState value)? loading,
    TResult? Function(_ErrorSocketState value)? error,
    TResult? Function(_OccurencesSocketState value)? occurences,
    TResult? Function(_CasefileSocketState value)? casefile,
  }) {
    return casefile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialSocketState value)? initial,
    TResult Function(_LoadingSocketState value)? loading,
    TResult Function(_ErrorSocketState value)? error,
    TResult Function(_OccurencesSocketState value)? occurences,
    TResult Function(_CasefileSocketState value)? casefile,
    required TResult orElse(),
  }) {
    if (casefile != null) {
      return casefile(this);
    }
    return orElse();
  }
}

abstract class _CasefileSocketState implements SocketState {
  const factory _CasefileSocketState(
      {required final SocketStatePayload payload}) = _$CasefileSocketStateImpl;

  @override
  SocketStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$CasefileSocketStateImplCopyWith<_$CasefileSocketStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocketStatePayload _$SocketStatePayloadFromJson(Map<String, dynamic> json) {
  return _SocketStatePayload.fromJson(json);
}

/// @nodoc
mixin _$SocketStatePayload {
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketStatePayloadCopyWith<SocketStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStatePayloadCopyWith<$Res> {
  factory $SocketStatePayloadCopyWith(
          SocketStatePayload value, $Res Function(SocketStatePayload) then) =
      _$SocketStatePayloadCopyWithImpl<$Res, SocketStatePayload>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class _$SocketStatePayloadCopyWithImpl<$Res, $Val extends SocketStatePayload>
    implements $SocketStatePayloadCopyWith<$Res> {
  _$SocketStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketStatePayloadImplCopyWith<$Res>
    implements $SocketStatePayloadCopyWith<$Res> {
  factory _$$SocketStatePayloadImplCopyWith(_$SocketStatePayloadImpl value,
          $Res Function(_$SocketStatePayloadImpl) then) =
      __$$SocketStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$SocketStatePayloadImplCopyWithImpl<$Res>
    extends _$SocketStatePayloadCopyWithImpl<$Res, _$SocketStatePayloadImpl>
    implements _$$SocketStatePayloadImplCopyWith<$Res> {
  __$$SocketStatePayloadImplCopyWithImpl(_$SocketStatePayloadImpl _value,
      $Res Function(_$SocketStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$SocketStatePayloadImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketStatePayloadImpl implements _SocketStatePayload {
  const _$SocketStatePayloadImpl({this.error});

  factory _$SocketStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketStatePayloadImplFromJson(json);

  @override
  final String? error;

  @override
  String toString() {
    return 'SocketStatePayload(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketStatePayloadImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketStatePayloadImplCopyWith<_$SocketStatePayloadImpl> get copyWith =>
      __$$SocketStatePayloadImplCopyWithImpl<_$SocketStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _SocketStatePayload implements SocketStatePayload {
  const factory _SocketStatePayload({final String? error}) =
      _$SocketStatePayloadImpl;

  factory _SocketStatePayload.fromJson(Map<String, dynamic> json) =
      _$SocketStatePayloadImpl.fromJson;

  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$SocketStatePayloadImplCopyWith<_$SocketStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
