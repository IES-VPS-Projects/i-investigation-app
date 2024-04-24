// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dcio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DcioState {
  DcioStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DcioStatePayload payload) initial,
    required TResult Function(DcioStatePayload payload) loading,
    required TResult Function(DcioStatePayload payload) error,
    required TResult Function(DcioStatePayload payload) occurences,
    required TResult Function(DcioStatePayload payload) casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DcioStatePayload payload)? initial,
    TResult? Function(DcioStatePayload payload)? loading,
    TResult? Function(DcioStatePayload payload)? error,
    TResult? Function(DcioStatePayload payload)? occurences,
    TResult? Function(DcioStatePayload payload)? casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DcioStatePayload payload)? initial,
    TResult Function(DcioStatePayload payload)? loading,
    TResult Function(DcioStatePayload payload)? error,
    TResult Function(DcioStatePayload payload)? occurences,
    TResult Function(DcioStatePayload payload)? casefile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialDcioState value) initial,
    required TResult Function(_LoadingDcioState value) loading,
    required TResult Function(_ErrorDcioState value) error,
    required TResult Function(_OccurencesDcioState value) occurences,
    required TResult Function(_CasefileDcioState value) casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDcioState value)? initial,
    TResult? Function(_LoadingDcioState value)? loading,
    TResult? Function(_ErrorDcioState value)? error,
    TResult? Function(_OccurencesDcioState value)? occurences,
    TResult? Function(_CasefileDcioState value)? casefile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDcioState value)? initial,
    TResult Function(_LoadingDcioState value)? loading,
    TResult Function(_ErrorDcioState value)? error,
    TResult Function(_OccurencesDcioState value)? occurences,
    TResult Function(_CasefileDcioState value)? casefile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DcioStateCopyWith<DcioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcioStateCopyWith<$Res> {
  factory $DcioStateCopyWith(DcioState value, $Res Function(DcioState) then) =
      _$DcioStateCopyWithImpl<$Res, DcioState>;
  @useResult
  $Res call({DcioStatePayload payload});

  $DcioStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$DcioStateCopyWithImpl<$Res, $Val extends DcioState>
    implements $DcioStateCopyWith<$Res> {
  _$DcioStateCopyWithImpl(this._value, this._then);

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
              as DcioStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DcioStatePayloadCopyWith<$Res> get payload {
    return $DcioStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialDcioStateImplCopyWith<$Res>
    implements $DcioStateCopyWith<$Res> {
  factory _$$InitialDcioStateImplCopyWith(_$InitialDcioStateImpl value,
          $Res Function(_$InitialDcioStateImpl) then) =
      __$$InitialDcioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DcioStatePayload payload});

  @override
  $DcioStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialDcioStateImplCopyWithImpl<$Res>
    extends _$DcioStateCopyWithImpl<$Res, _$InitialDcioStateImpl>
    implements _$$InitialDcioStateImplCopyWith<$Res> {
  __$$InitialDcioStateImplCopyWithImpl(_$InitialDcioStateImpl _value,
      $Res Function(_$InitialDcioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialDcioStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DcioStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialDcioStateImpl implements _InitialDcioState {
  const _$InitialDcioStateImpl({required this.payload});

  @override
  final DcioStatePayload payload;

  @override
  String toString() {
    return 'DcioState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDcioStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialDcioStateImplCopyWith<_$InitialDcioStateImpl> get copyWith =>
      __$$InitialDcioStateImplCopyWithImpl<_$InitialDcioStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DcioStatePayload payload) initial,
    required TResult Function(DcioStatePayload payload) loading,
    required TResult Function(DcioStatePayload payload) error,
    required TResult Function(DcioStatePayload payload) occurences,
    required TResult Function(DcioStatePayload payload) casefile,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DcioStatePayload payload)? initial,
    TResult? Function(DcioStatePayload payload)? loading,
    TResult? Function(DcioStatePayload payload)? error,
    TResult? Function(DcioStatePayload payload)? occurences,
    TResult? Function(DcioStatePayload payload)? casefile,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DcioStatePayload payload)? initial,
    TResult Function(DcioStatePayload payload)? loading,
    TResult Function(DcioStatePayload payload)? error,
    TResult Function(DcioStatePayload payload)? occurences,
    TResult Function(DcioStatePayload payload)? casefile,
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
    required TResult Function(_InitialDcioState value) initial,
    required TResult Function(_LoadingDcioState value) loading,
    required TResult Function(_ErrorDcioState value) error,
    required TResult Function(_OccurencesDcioState value) occurences,
    required TResult Function(_CasefileDcioState value) casefile,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDcioState value)? initial,
    TResult? Function(_LoadingDcioState value)? loading,
    TResult? Function(_ErrorDcioState value)? error,
    TResult? Function(_OccurencesDcioState value)? occurences,
    TResult? Function(_CasefileDcioState value)? casefile,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDcioState value)? initial,
    TResult Function(_LoadingDcioState value)? loading,
    TResult Function(_ErrorDcioState value)? error,
    TResult Function(_OccurencesDcioState value)? occurences,
    TResult Function(_CasefileDcioState value)? casefile,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialDcioState implements DcioState {
  const factory _InitialDcioState({required final DcioStatePayload payload}) =
      _$InitialDcioStateImpl;

  @override
  DcioStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialDcioStateImplCopyWith<_$InitialDcioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDcioStateImplCopyWith<$Res>
    implements $DcioStateCopyWith<$Res> {
  factory _$$LoadingDcioStateImplCopyWith(_$LoadingDcioStateImpl value,
          $Res Function(_$LoadingDcioStateImpl) then) =
      __$$LoadingDcioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DcioStatePayload payload});

  @override
  $DcioStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingDcioStateImplCopyWithImpl<$Res>
    extends _$DcioStateCopyWithImpl<$Res, _$LoadingDcioStateImpl>
    implements _$$LoadingDcioStateImplCopyWith<$Res> {
  __$$LoadingDcioStateImplCopyWithImpl(_$LoadingDcioStateImpl _value,
      $Res Function(_$LoadingDcioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingDcioStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DcioStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingDcioStateImpl implements _LoadingDcioState {
  const _$LoadingDcioStateImpl({required this.payload});

  @override
  final DcioStatePayload payload;

  @override
  String toString() {
    return 'DcioState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDcioStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingDcioStateImplCopyWith<_$LoadingDcioStateImpl> get copyWith =>
      __$$LoadingDcioStateImplCopyWithImpl<_$LoadingDcioStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DcioStatePayload payload) initial,
    required TResult Function(DcioStatePayload payload) loading,
    required TResult Function(DcioStatePayload payload) error,
    required TResult Function(DcioStatePayload payload) occurences,
    required TResult Function(DcioStatePayload payload) casefile,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DcioStatePayload payload)? initial,
    TResult? Function(DcioStatePayload payload)? loading,
    TResult? Function(DcioStatePayload payload)? error,
    TResult? Function(DcioStatePayload payload)? occurences,
    TResult? Function(DcioStatePayload payload)? casefile,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DcioStatePayload payload)? initial,
    TResult Function(DcioStatePayload payload)? loading,
    TResult Function(DcioStatePayload payload)? error,
    TResult Function(DcioStatePayload payload)? occurences,
    TResult Function(DcioStatePayload payload)? casefile,
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
    required TResult Function(_InitialDcioState value) initial,
    required TResult Function(_LoadingDcioState value) loading,
    required TResult Function(_ErrorDcioState value) error,
    required TResult Function(_OccurencesDcioState value) occurences,
    required TResult Function(_CasefileDcioState value) casefile,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDcioState value)? initial,
    TResult? Function(_LoadingDcioState value)? loading,
    TResult? Function(_ErrorDcioState value)? error,
    TResult? Function(_OccurencesDcioState value)? occurences,
    TResult? Function(_CasefileDcioState value)? casefile,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDcioState value)? initial,
    TResult Function(_LoadingDcioState value)? loading,
    TResult Function(_ErrorDcioState value)? error,
    TResult Function(_OccurencesDcioState value)? occurences,
    TResult Function(_CasefileDcioState value)? casefile,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingDcioState implements DcioState {
  const factory _LoadingDcioState({required final DcioStatePayload payload}) =
      _$LoadingDcioStateImpl;

  @override
  DcioStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingDcioStateImplCopyWith<_$LoadingDcioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorDcioStateImplCopyWith<$Res>
    implements $DcioStateCopyWith<$Res> {
  factory _$$ErrorDcioStateImplCopyWith(_$ErrorDcioStateImpl value,
          $Res Function(_$ErrorDcioStateImpl) then) =
      __$$ErrorDcioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DcioStatePayload payload});

  @override
  $DcioStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorDcioStateImplCopyWithImpl<$Res>
    extends _$DcioStateCopyWithImpl<$Res, _$ErrorDcioStateImpl>
    implements _$$ErrorDcioStateImplCopyWith<$Res> {
  __$$ErrorDcioStateImplCopyWithImpl(
      _$ErrorDcioStateImpl _value, $Res Function(_$ErrorDcioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorDcioStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DcioStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorDcioStateImpl implements _ErrorDcioState {
  const _$ErrorDcioStateImpl({required this.payload});

  @override
  final DcioStatePayload payload;

  @override
  String toString() {
    return 'DcioState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDcioStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDcioStateImplCopyWith<_$ErrorDcioStateImpl> get copyWith =>
      __$$ErrorDcioStateImplCopyWithImpl<_$ErrorDcioStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DcioStatePayload payload) initial,
    required TResult Function(DcioStatePayload payload) loading,
    required TResult Function(DcioStatePayload payload) error,
    required TResult Function(DcioStatePayload payload) occurences,
    required TResult Function(DcioStatePayload payload) casefile,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DcioStatePayload payload)? initial,
    TResult? Function(DcioStatePayload payload)? loading,
    TResult? Function(DcioStatePayload payload)? error,
    TResult? Function(DcioStatePayload payload)? occurences,
    TResult? Function(DcioStatePayload payload)? casefile,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DcioStatePayload payload)? initial,
    TResult Function(DcioStatePayload payload)? loading,
    TResult Function(DcioStatePayload payload)? error,
    TResult Function(DcioStatePayload payload)? occurences,
    TResult Function(DcioStatePayload payload)? casefile,
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
    required TResult Function(_InitialDcioState value) initial,
    required TResult Function(_LoadingDcioState value) loading,
    required TResult Function(_ErrorDcioState value) error,
    required TResult Function(_OccurencesDcioState value) occurences,
    required TResult Function(_CasefileDcioState value) casefile,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDcioState value)? initial,
    TResult? Function(_LoadingDcioState value)? loading,
    TResult? Function(_ErrorDcioState value)? error,
    TResult? Function(_OccurencesDcioState value)? occurences,
    TResult? Function(_CasefileDcioState value)? casefile,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDcioState value)? initial,
    TResult Function(_LoadingDcioState value)? loading,
    TResult Function(_ErrorDcioState value)? error,
    TResult Function(_OccurencesDcioState value)? occurences,
    TResult Function(_CasefileDcioState value)? casefile,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDcioState implements DcioState {
  const factory _ErrorDcioState({required final DcioStatePayload payload}) =
      _$ErrorDcioStateImpl;

  @override
  DcioStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorDcioStateImplCopyWith<_$ErrorDcioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OccurencesDcioStateImplCopyWith<$Res>
    implements $DcioStateCopyWith<$Res> {
  factory _$$OccurencesDcioStateImplCopyWith(_$OccurencesDcioStateImpl value,
          $Res Function(_$OccurencesDcioStateImpl) then) =
      __$$OccurencesDcioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DcioStatePayload payload});

  @override
  $DcioStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$OccurencesDcioStateImplCopyWithImpl<$Res>
    extends _$DcioStateCopyWithImpl<$Res, _$OccurencesDcioStateImpl>
    implements _$$OccurencesDcioStateImplCopyWith<$Res> {
  __$$OccurencesDcioStateImplCopyWithImpl(_$OccurencesDcioStateImpl _value,
      $Res Function(_$OccurencesDcioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$OccurencesDcioStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DcioStatePayload,
    ));
  }
}

/// @nodoc

class _$OccurencesDcioStateImpl implements _OccurencesDcioState {
  const _$OccurencesDcioStateImpl({required this.payload});

  @override
  final DcioStatePayload payload;

  @override
  String toString() {
    return 'DcioState.occurences(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccurencesDcioStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccurencesDcioStateImplCopyWith<_$OccurencesDcioStateImpl> get copyWith =>
      __$$OccurencesDcioStateImplCopyWithImpl<_$OccurencesDcioStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DcioStatePayload payload) initial,
    required TResult Function(DcioStatePayload payload) loading,
    required TResult Function(DcioStatePayload payload) error,
    required TResult Function(DcioStatePayload payload) occurences,
    required TResult Function(DcioStatePayload payload) casefile,
  }) {
    return occurences(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DcioStatePayload payload)? initial,
    TResult? Function(DcioStatePayload payload)? loading,
    TResult? Function(DcioStatePayload payload)? error,
    TResult? Function(DcioStatePayload payload)? occurences,
    TResult? Function(DcioStatePayload payload)? casefile,
  }) {
    return occurences?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DcioStatePayload payload)? initial,
    TResult Function(DcioStatePayload payload)? loading,
    TResult Function(DcioStatePayload payload)? error,
    TResult Function(DcioStatePayload payload)? occurences,
    TResult Function(DcioStatePayload payload)? casefile,
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
    required TResult Function(_InitialDcioState value) initial,
    required TResult Function(_LoadingDcioState value) loading,
    required TResult Function(_ErrorDcioState value) error,
    required TResult Function(_OccurencesDcioState value) occurences,
    required TResult Function(_CasefileDcioState value) casefile,
  }) {
    return occurences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDcioState value)? initial,
    TResult? Function(_LoadingDcioState value)? loading,
    TResult? Function(_ErrorDcioState value)? error,
    TResult? Function(_OccurencesDcioState value)? occurences,
    TResult? Function(_CasefileDcioState value)? casefile,
  }) {
    return occurences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDcioState value)? initial,
    TResult Function(_LoadingDcioState value)? loading,
    TResult Function(_ErrorDcioState value)? error,
    TResult Function(_OccurencesDcioState value)? occurences,
    TResult Function(_CasefileDcioState value)? casefile,
    required TResult orElse(),
  }) {
    if (occurences != null) {
      return occurences(this);
    }
    return orElse();
  }
}

abstract class _OccurencesDcioState implements DcioState {
  const factory _OccurencesDcioState(
      {required final DcioStatePayload payload}) = _$OccurencesDcioStateImpl;

  @override
  DcioStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$OccurencesDcioStateImplCopyWith<_$OccurencesDcioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CasefileDcioStateImplCopyWith<$Res>
    implements $DcioStateCopyWith<$Res> {
  factory _$$CasefileDcioStateImplCopyWith(_$CasefileDcioStateImpl value,
          $Res Function(_$CasefileDcioStateImpl) then) =
      __$$CasefileDcioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DcioStatePayload payload});

  @override
  $DcioStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CasefileDcioStateImplCopyWithImpl<$Res>
    extends _$DcioStateCopyWithImpl<$Res, _$CasefileDcioStateImpl>
    implements _$$CasefileDcioStateImplCopyWith<$Res> {
  __$$CasefileDcioStateImplCopyWithImpl(_$CasefileDcioStateImpl _value,
      $Res Function(_$CasefileDcioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CasefileDcioStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as DcioStatePayload,
    ));
  }
}

/// @nodoc

class _$CasefileDcioStateImpl implements _CasefileDcioState {
  const _$CasefileDcioStateImpl({required this.payload});

  @override
  final DcioStatePayload payload;

  @override
  String toString() {
    return 'DcioState.casefile(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CasefileDcioStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CasefileDcioStateImplCopyWith<_$CasefileDcioStateImpl> get copyWith =>
      __$$CasefileDcioStateImplCopyWithImpl<_$CasefileDcioStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DcioStatePayload payload) initial,
    required TResult Function(DcioStatePayload payload) loading,
    required TResult Function(DcioStatePayload payload) error,
    required TResult Function(DcioStatePayload payload) occurences,
    required TResult Function(DcioStatePayload payload) casefile,
  }) {
    return casefile(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DcioStatePayload payload)? initial,
    TResult? Function(DcioStatePayload payload)? loading,
    TResult? Function(DcioStatePayload payload)? error,
    TResult? Function(DcioStatePayload payload)? occurences,
    TResult? Function(DcioStatePayload payload)? casefile,
  }) {
    return casefile?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DcioStatePayload payload)? initial,
    TResult Function(DcioStatePayload payload)? loading,
    TResult Function(DcioStatePayload payload)? error,
    TResult Function(DcioStatePayload payload)? occurences,
    TResult Function(DcioStatePayload payload)? casefile,
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
    required TResult Function(_InitialDcioState value) initial,
    required TResult Function(_LoadingDcioState value) loading,
    required TResult Function(_ErrorDcioState value) error,
    required TResult Function(_OccurencesDcioState value) occurences,
    required TResult Function(_CasefileDcioState value) casefile,
  }) {
    return casefile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialDcioState value)? initial,
    TResult? Function(_LoadingDcioState value)? loading,
    TResult? Function(_ErrorDcioState value)? error,
    TResult? Function(_OccurencesDcioState value)? occurences,
    TResult? Function(_CasefileDcioState value)? casefile,
  }) {
    return casefile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialDcioState value)? initial,
    TResult Function(_LoadingDcioState value)? loading,
    TResult Function(_ErrorDcioState value)? error,
    TResult Function(_OccurencesDcioState value)? occurences,
    TResult Function(_CasefileDcioState value)? casefile,
    required TResult orElse(),
  }) {
    if (casefile != null) {
      return casefile(this);
    }
    return orElse();
  }
}

abstract class _CasefileDcioState implements DcioState {
  const factory _CasefileDcioState({required final DcioStatePayload payload}) =
      _$CasefileDcioStateImpl;

  @override
  DcioStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$CasefileDcioStateImplCopyWith<_$CasefileDcioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DcioStatePayload _$DcioStatePayloadFromJson(Map<String, dynamic> json) {
  return _DcioStatePayload.fromJson(json);
}

/// @nodoc
mixin _$DcioStatePayload {
  String? get error => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<Occurence>? get occurences => throw _privateConstructorUsedError;
  List<Users>? get users => throw _privateConstructorUsedError;
  NewCaseFile? get caseFile => throw _privateConstructorUsedError;
  List<Users>? get officers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DcioStatePayloadCopyWith<DcioStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DcioStatePayloadCopyWith<$Res> {
  factory $DcioStatePayloadCopyWith(
          DcioStatePayload value, $Res Function(DcioStatePayload) then) =
      _$DcioStatePayloadCopyWithImpl<$Res, DcioStatePayload>;
  @useResult
  $Res call(
      {String? error,
      int? page,
      List<Occurence>? occurences,
      List<Users>? users,
      NewCaseFile? caseFile,
      List<Users>? officers});

  $NewCaseFileCopyWith<$Res>? get caseFile;
}

/// @nodoc
class _$DcioStatePayloadCopyWithImpl<$Res, $Val extends DcioStatePayload>
    implements $DcioStatePayloadCopyWith<$Res> {
  _$DcioStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
    Object? occurences = freezed,
    Object? users = freezed,
    Object? caseFile = freezed,
    Object? officers = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      occurences: freezed == occurences
          ? _value.occurences
          : occurences // ignore: cast_nullable_to_non_nullable
              as List<Occurence>?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
      caseFile: freezed == caseFile
          ? _value.caseFile
          : caseFile // ignore: cast_nullable_to_non_nullable
              as NewCaseFile?,
      officers: freezed == officers
          ? _value.officers
          : officers // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewCaseFileCopyWith<$Res>? get caseFile {
    if (_value.caseFile == null) {
      return null;
    }

    return $NewCaseFileCopyWith<$Res>(_value.caseFile!, (value) {
      return _then(_value.copyWith(caseFile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DcioStatePayloadImplCopyWith<$Res>
    implements $DcioStatePayloadCopyWith<$Res> {
  factory _$$DcioStatePayloadImplCopyWith(_$DcioStatePayloadImpl value,
          $Res Function(_$DcioStatePayloadImpl) then) =
      __$$DcioStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      int? page,
      List<Occurence>? occurences,
      List<Users>? users,
      NewCaseFile? caseFile,
      List<Users>? officers});

  @override
  $NewCaseFileCopyWith<$Res>? get caseFile;
}

/// @nodoc
class __$$DcioStatePayloadImplCopyWithImpl<$Res>
    extends _$DcioStatePayloadCopyWithImpl<$Res, _$DcioStatePayloadImpl>
    implements _$$DcioStatePayloadImplCopyWith<$Res> {
  __$$DcioStatePayloadImplCopyWithImpl(_$DcioStatePayloadImpl _value,
      $Res Function(_$DcioStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
    Object? occurences = freezed,
    Object? users = freezed,
    Object? caseFile = freezed,
    Object? officers = freezed,
  }) {
    return _then(_$DcioStatePayloadImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      occurences: freezed == occurences
          ? _value._occurences
          : occurences // ignore: cast_nullable_to_non_nullable
              as List<Occurence>?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
      caseFile: freezed == caseFile
          ? _value.caseFile
          : caseFile // ignore: cast_nullable_to_non_nullable
              as NewCaseFile?,
      officers: freezed == officers
          ? _value._officers
          : officers // ignore: cast_nullable_to_non_nullable
              as List<Users>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DcioStatePayloadImpl implements _DcioStatePayload {
  const _$DcioStatePayloadImpl(
      {this.error,
      this.page,
      final List<Occurence>? occurences,
      final List<Users>? users,
      this.caseFile,
      final List<Users>? officers})
      : _occurences = occurences,
        _users = users,
        _officers = officers;

  factory _$DcioStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$DcioStatePayloadImplFromJson(json);

  @override
  final String? error;
  @override
  final int? page;
  final List<Occurence>? _occurences;
  @override
  List<Occurence>? get occurences {
    final value = _occurences;
    if (value == null) return null;
    if (_occurences is EqualUnmodifiableListView) return _occurences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Users>? _users;
  @override
  List<Users>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final NewCaseFile? caseFile;
  final List<Users>? _officers;
  @override
  List<Users>? get officers {
    final value = _officers;
    if (value == null) return null;
    if (_officers is EqualUnmodifiableListView) return _officers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DcioStatePayload(error: $error, page: $page, occurences: $occurences, users: $users, caseFile: $caseFile, officers: $officers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DcioStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._occurences, _occurences) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.caseFile, caseFile) ||
                other.caseFile == caseFile) &&
            const DeepCollectionEquality().equals(other._officers, _officers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      page,
      const DeepCollectionEquality().hash(_occurences),
      const DeepCollectionEquality().hash(_users),
      caseFile,
      const DeepCollectionEquality().hash(_officers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DcioStatePayloadImplCopyWith<_$DcioStatePayloadImpl> get copyWith =>
      __$$DcioStatePayloadImplCopyWithImpl<_$DcioStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DcioStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _DcioStatePayload implements DcioStatePayload {
  const factory _DcioStatePayload(
      {final String? error,
      final int? page,
      final List<Occurence>? occurences,
      final List<Users>? users,
      final NewCaseFile? caseFile,
      final List<Users>? officers}) = _$DcioStatePayloadImpl;

  factory _DcioStatePayload.fromJson(Map<String, dynamic> json) =
      _$DcioStatePayloadImpl.fromJson;

  @override
  String? get error;
  @override
  int? get page;
  @override
  List<Occurence>? get occurences;
  @override
  List<Users>? get users;
  @override
  NewCaseFile? get caseFile;
  @override
  List<Users>? get officers;
  @override
  @JsonKey(ignore: true)
  _$$DcioStatePayloadImplCopyWith<_$DcioStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
