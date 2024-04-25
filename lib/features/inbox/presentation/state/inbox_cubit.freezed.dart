// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbox_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InboxState {
  InboxStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxStateCopyWith<InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res, InboxState>;
  @useResult
  $Res call({InboxStatePayload payload});

  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res, $Val extends InboxState>
    implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

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
              as InboxStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InboxStatePayloadCopyWith<$Res> get payload {
    return $InboxStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$InitialInboxStateImplCopyWith(_$InitialInboxStateImpl value,
          $Res Function(_$InitialInboxStateImpl) then) =
      __$$InitialInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$InitialInboxStateImpl>
    implements _$$InitialInboxStateImplCopyWith<$Res> {
  __$$InitialInboxStateImplCopyWithImpl(_$InitialInboxStateImpl _value,
      $Res Function(_$InitialInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialInboxStateImpl implements _InitialInboxState {
  const _$InitialInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialInboxStateImplCopyWith<_$InitialInboxStateImpl> get copyWith =>
      __$$InitialInboxStateImplCopyWithImpl<_$InitialInboxStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
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
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialInboxState implements InboxState {
  const factory _InitialInboxState({required final InboxStatePayload payload}) =
      _$InitialInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialInboxStateImplCopyWith<_$InitialInboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$LoadingInboxStateImplCopyWith(_$LoadingInboxStateImpl value,
          $Res Function(_$LoadingInboxStateImpl) then) =
      __$$LoadingInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$LoadingInboxStateImpl>
    implements _$$LoadingInboxStateImplCopyWith<$Res> {
  __$$LoadingInboxStateImplCopyWithImpl(_$LoadingInboxStateImpl _value,
      $Res Function(_$LoadingInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingInboxStateImpl implements _LoadingInboxState {
  const _$LoadingInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingInboxStateImplCopyWith<_$LoadingInboxStateImpl> get copyWith =>
      __$$LoadingInboxStateImplCopyWithImpl<_$LoadingInboxStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
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
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingInboxState implements InboxState {
  const factory _LoadingInboxState({required final InboxStatePayload payload}) =
      _$LoadingInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingInboxStateImplCopyWith<_$LoadingInboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorIPRSInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$ErrorIPRSInboxStateImplCopyWith(_$ErrorIPRSInboxStateImpl value,
          $Res Function(_$ErrorIPRSInboxStateImpl) then) =
      __$$ErrorIPRSInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorIPRSInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$ErrorIPRSInboxStateImpl>
    implements _$$ErrorIPRSInboxStateImplCopyWith<$Res> {
  __$$ErrorIPRSInboxStateImplCopyWithImpl(_$ErrorIPRSInboxStateImpl _value,
      $Res Function(_$ErrorIPRSInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorIPRSInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorIPRSInboxStateImpl implements _ErrorIPRSInboxState {
  const _$ErrorIPRSInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.errorIPRS(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorIPRSInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorIPRSInboxStateImplCopyWith<_$ErrorIPRSInboxStateImpl> get copyWith =>
      __$$ErrorIPRSInboxStateImplCopyWithImpl<_$ErrorIPRSInboxStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return errorIPRS(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return errorIPRS?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
    required TResult orElse(),
  }) {
    if (errorIPRS != null) {
      return errorIPRS(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return errorIPRS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return errorIPRS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (errorIPRS != null) {
      return errorIPRS(this);
    }
    return orElse();
  }
}

abstract class _ErrorIPRSInboxState implements InboxState {
  const factory _ErrorIPRSInboxState(
      {required final InboxStatePayload payload}) = _$ErrorIPRSInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorIPRSInboxStateImplCopyWith<_$ErrorIPRSInboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneIPRSInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$DoneIPRSInboxStateImplCopyWith(_$DoneIPRSInboxStateImpl value,
          $Res Function(_$DoneIPRSInboxStateImpl) then) =
      __$$DoneIPRSInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$DoneIPRSInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$DoneIPRSInboxStateImpl>
    implements _$$DoneIPRSInboxStateImplCopyWith<$Res> {
  __$$DoneIPRSInboxStateImplCopyWithImpl(_$DoneIPRSInboxStateImpl _value,
      $Res Function(_$DoneIPRSInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$DoneIPRSInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$DoneIPRSInboxStateImpl implements _DoneIPRSInboxState {
  const _$DoneIPRSInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.doneIPRS(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneIPRSInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneIPRSInboxStateImplCopyWith<_$DoneIPRSInboxStateImpl> get copyWith =>
      __$$DoneIPRSInboxStateImplCopyWithImpl<_$DoneIPRSInboxStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return doneIPRS(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return doneIPRS?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
    required TResult orElse(),
  }) {
    if (doneIPRS != null) {
      return doneIPRS(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return doneIPRS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return doneIPRS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (doneIPRS != null) {
      return doneIPRS(this);
    }
    return orElse();
  }
}

abstract class _DoneIPRSInboxState implements InboxState {
  const factory _DoneIPRSInboxState(
      {required final InboxStatePayload payload}) = _$DoneIPRSInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$DoneIPRSInboxStateImplCopyWith<_$DoneIPRSInboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingIPRSInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$LoadingIPRSInboxStateImplCopyWith(
          _$LoadingIPRSInboxStateImpl value,
          $Res Function(_$LoadingIPRSInboxStateImpl) then) =
      __$$LoadingIPRSInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingIPRSInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$LoadingIPRSInboxStateImpl>
    implements _$$LoadingIPRSInboxStateImplCopyWith<$Res> {
  __$$LoadingIPRSInboxStateImplCopyWithImpl(_$LoadingIPRSInboxStateImpl _value,
      $Res Function(_$LoadingIPRSInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingIPRSInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingIPRSInboxStateImpl implements _LoadingIPRSInboxState {
  const _$LoadingIPRSInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.loadingIPRS(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingIPRSInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingIPRSInboxStateImplCopyWith<_$LoadingIPRSInboxStateImpl>
      get copyWith => __$$LoadingIPRSInboxStateImplCopyWithImpl<
          _$LoadingIPRSInboxStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return loadingIPRS(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return loadingIPRS?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
    required TResult orElse(),
  }) {
    if (loadingIPRS != null) {
      return loadingIPRS(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return loadingIPRS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return loadingIPRS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (loadingIPRS != null) {
      return loadingIPRS(this);
    }
    return orElse();
  }
}

abstract class _LoadingIPRSInboxState implements InboxState {
  const factory _LoadingIPRSInboxState(
      {required final InboxStatePayload payload}) = _$LoadingIPRSInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingIPRSInboxStateImplCopyWith<_$LoadingIPRSInboxStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$ErrorInboxStateImplCopyWith(_$ErrorInboxStateImpl value,
          $Res Function(_$ErrorInboxStateImpl) then) =
      __$$ErrorInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$ErrorInboxStateImpl>
    implements _$$ErrorInboxStateImplCopyWith<$Res> {
  __$$ErrorInboxStateImplCopyWithImpl(
      _$ErrorInboxStateImpl _value, $Res Function(_$ErrorInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorInboxStateImpl implements _ErrorInboxState {
  const _$ErrorInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorInboxStateImplCopyWith<_$ErrorInboxStateImpl> get copyWith =>
      __$$ErrorInboxStateImplCopyWithImpl<_$ErrorInboxStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
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
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorInboxState implements InboxState {
  const factory _ErrorInboxState({required final InboxStatePayload payload}) =
      _$ErrorInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorInboxStateImplCopyWith<_$ErrorInboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CasesInboxStateImplCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$CasesInboxStateImplCopyWith(_$CasesInboxStateImpl value,
          $Res Function(_$CasesInboxStateImpl) then) =
      __$$CasesInboxStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InboxStatePayload payload});

  @override
  $InboxStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CasesInboxStateImplCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$CasesInboxStateImpl>
    implements _$$CasesInboxStateImplCopyWith<$Res> {
  __$$CasesInboxStateImplCopyWithImpl(
      _$CasesInboxStateImpl _value, $Res Function(_$CasesInboxStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CasesInboxStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InboxStatePayload,
    ));
  }
}

/// @nodoc

class _$CasesInboxStateImpl implements _CasesInboxState {
  const _$CasesInboxStateImpl({required this.payload});

  @override
  final InboxStatePayload payload;

  @override
  String toString() {
    return 'InboxState.cases(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CasesInboxStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CasesInboxStateImplCopyWith<_$CasesInboxStateImpl> get copyWith =>
      __$$CasesInboxStateImplCopyWithImpl<_$CasesInboxStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InboxStatePayload payload) initial,
    required TResult Function(InboxStatePayload payload) loading,
    required TResult Function(InboxStatePayload payload) errorIPRS,
    required TResult Function(InboxStatePayload payload) doneIPRS,
    required TResult Function(InboxStatePayload payload) loadingIPRS,
    required TResult Function(InboxStatePayload payload) error,
    required TResult Function(InboxStatePayload payload) cases,
  }) {
    return cases(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InboxStatePayload payload)? initial,
    TResult? Function(InboxStatePayload payload)? loading,
    TResult? Function(InboxStatePayload payload)? errorIPRS,
    TResult? Function(InboxStatePayload payload)? doneIPRS,
    TResult? Function(InboxStatePayload payload)? loadingIPRS,
    TResult? Function(InboxStatePayload payload)? error,
    TResult? Function(InboxStatePayload payload)? cases,
  }) {
    return cases?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InboxStatePayload payload)? initial,
    TResult Function(InboxStatePayload payload)? loading,
    TResult Function(InboxStatePayload payload)? errorIPRS,
    TResult Function(InboxStatePayload payload)? doneIPRS,
    TResult Function(InboxStatePayload payload)? loadingIPRS,
    TResult Function(InboxStatePayload payload)? error,
    TResult Function(InboxStatePayload payload)? cases,
    required TResult orElse(),
  }) {
    if (cases != null) {
      return cases(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInboxState value) initial,
    required TResult Function(_LoadingInboxState value) loading,
    required TResult Function(_ErrorIPRSInboxState value) errorIPRS,
    required TResult Function(_DoneIPRSInboxState value) doneIPRS,
    required TResult Function(_LoadingIPRSInboxState value) loadingIPRS,
    required TResult Function(_ErrorInboxState value) error,
    required TResult Function(_CasesInboxState value) cases,
  }) {
    return cases(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialInboxState value)? initial,
    TResult? Function(_LoadingInboxState value)? loading,
    TResult? Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult? Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult? Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult? Function(_ErrorInboxState value)? error,
    TResult? Function(_CasesInboxState value)? cases,
  }) {
    return cases?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInboxState value)? initial,
    TResult Function(_LoadingInboxState value)? loading,
    TResult Function(_ErrorIPRSInboxState value)? errorIPRS,
    TResult Function(_DoneIPRSInboxState value)? doneIPRS,
    TResult Function(_LoadingIPRSInboxState value)? loadingIPRS,
    TResult Function(_ErrorInboxState value)? error,
    TResult Function(_CasesInboxState value)? cases,
    required TResult orElse(),
  }) {
    if (cases != null) {
      return cases(this);
    }
    return orElse();
  }
}

abstract class _CasesInboxState implements InboxState {
  const factory _CasesInboxState({required final InboxStatePayload payload}) =
      _$CasesInboxStateImpl;

  @override
  InboxStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$CasesInboxStateImplCopyWith<_$CasesInboxStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InboxStatePayload _$InboxStatePayloadFromJson(Map<String, dynamic> json) {
  return _InboxStatePayload.fromJson(json);
}

/// @nodoc
mixin _$InboxStatePayload {
  String? get error => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<OpenCases>? get cases => throw _privateConstructorUsedError;
  IprsModel? get iprsModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InboxStatePayloadCopyWith<InboxStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStatePayloadCopyWith<$Res> {
  factory $InboxStatePayloadCopyWith(
          InboxStatePayload value, $Res Function(InboxStatePayload) then) =
      _$InboxStatePayloadCopyWithImpl<$Res, InboxStatePayload>;
  @useResult
  $Res call(
      {String? error, int? page, List<OpenCases>? cases, IprsModel? iprsModel});

  $IprsModelCopyWith<$Res>? get iprsModel;
}

/// @nodoc
class _$InboxStatePayloadCopyWithImpl<$Res, $Val extends InboxStatePayload>
    implements $InboxStatePayloadCopyWith<$Res> {
  _$InboxStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
    Object? cases = freezed,
    Object? iprsModel = freezed,
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
      cases: freezed == cases
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as List<OpenCases>?,
      iprsModel: freezed == iprsModel
          ? _value.iprsModel
          : iprsModel // ignore: cast_nullable_to_non_nullable
              as IprsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IprsModelCopyWith<$Res>? get iprsModel {
    if (_value.iprsModel == null) {
      return null;
    }

    return $IprsModelCopyWith<$Res>(_value.iprsModel!, (value) {
      return _then(_value.copyWith(iprsModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InboxStatePayloadImplCopyWith<$Res>
    implements $InboxStatePayloadCopyWith<$Res> {
  factory _$$InboxStatePayloadImplCopyWith(_$InboxStatePayloadImpl value,
          $Res Function(_$InboxStatePayloadImpl) then) =
      __$$InboxStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error, int? page, List<OpenCases>? cases, IprsModel? iprsModel});

  @override
  $IprsModelCopyWith<$Res>? get iprsModel;
}

/// @nodoc
class __$$InboxStatePayloadImplCopyWithImpl<$Res>
    extends _$InboxStatePayloadCopyWithImpl<$Res, _$InboxStatePayloadImpl>
    implements _$$InboxStatePayloadImplCopyWith<$Res> {
  __$$InboxStatePayloadImplCopyWithImpl(_$InboxStatePayloadImpl _value,
      $Res Function(_$InboxStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
    Object? cases = freezed,
    Object? iprsModel = freezed,
  }) {
    return _then(_$InboxStatePayloadImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      cases: freezed == cases
          ? _value._cases
          : cases // ignore: cast_nullable_to_non_nullable
              as List<OpenCases>?,
      iprsModel: freezed == iprsModel
          ? _value.iprsModel
          : iprsModel // ignore: cast_nullable_to_non_nullable
              as IprsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InboxStatePayloadImpl implements _InboxStatePayload {
  const _$InboxStatePayloadImpl(
      {this.error, this.page, final List<OpenCases>? cases, this.iprsModel})
      : _cases = cases;

  factory _$InboxStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$InboxStatePayloadImplFromJson(json);

  @override
  final String? error;
  @override
  final int? page;
  final List<OpenCases>? _cases;
  @override
  List<OpenCases>? get cases {
    final value = _cases;
    if (value == null) return null;
    if (_cases is EqualUnmodifiableListView) return _cases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final IprsModel? iprsModel;

  @override
  String toString() {
    return 'InboxStatePayload(error: $error, page: $page, cases: $cases, iprsModel: $iprsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InboxStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._cases, _cases) &&
            (identical(other.iprsModel, iprsModel) ||
                other.iprsModel == iprsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, page,
      const DeepCollectionEquality().hash(_cases), iprsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InboxStatePayloadImplCopyWith<_$InboxStatePayloadImpl> get copyWith =>
      __$$InboxStatePayloadImplCopyWithImpl<_$InboxStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InboxStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _InboxStatePayload implements InboxStatePayload {
  const factory _InboxStatePayload(
      {final String? error,
      final int? page,
      final List<OpenCases>? cases,
      final IprsModel? iprsModel}) = _$InboxStatePayloadImpl;

  factory _InboxStatePayload.fromJson(Map<String, dynamic> json) =
      _$InboxStatePayloadImpl.fromJson;

  @override
  String? get error;
  @override
  int? get page;
  @override
  List<OpenCases>? get cases;
  @override
  IprsModel? get iprsModel;
  @override
  @JsonKey(ignore: true)
  _$$InboxStatePayloadImplCopyWith<_$InboxStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
