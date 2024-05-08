// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_case_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewCaseState {
  NewCaseStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCaseStatePayload payload) initial,
    required TResult Function(NewCaseStatePayload payload) loading,
    required TResult Function(NewCaseStatePayload payload) createdCase,
    required TResult Function(NewCaseStatePayload payload) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCaseStatePayload payload)? initial,
    TResult? Function(NewCaseStatePayload payload)? loading,
    TResult? Function(NewCaseStatePayload payload)? createdCase,
    TResult? Function(NewCaseStatePayload payload)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCaseStatePayload payload)? initial,
    TResult Function(NewCaseStatePayload payload)? loading,
    TResult Function(NewCaseStatePayload payload)? createdCase,
    TResult Function(NewCaseStatePayload payload)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewCaseState value) initial,
    required TResult Function(_LoadingNewCaseState value) loading,
    required TResult Function(_CreatedCaseNewCaseState value) createdCase,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNewCaseState value)? initial,
    TResult? Function(_LoadingNewCaseState value)? loading,
    TResult? Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewCaseState value)? initial,
    TResult Function(_LoadingNewCaseState value)? loading,
    TResult Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewCaseStateCopyWith<NewCaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCaseStateCopyWith<$Res> {
  factory $NewCaseStateCopyWith(
          NewCaseState value, $Res Function(NewCaseState) then) =
      _$NewCaseStateCopyWithImpl<$Res, NewCaseState>;
  @useResult
  $Res call({NewCaseStatePayload payload});

  $NewCaseStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$NewCaseStateCopyWithImpl<$Res, $Val extends NewCaseState>
    implements $NewCaseStateCopyWith<$Res> {
  _$NewCaseStateCopyWithImpl(this._value, this._then);

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
              as NewCaseStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewCaseStatePayloadCopyWith<$Res> get payload {
    return $NewCaseStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialNewCaseStateImplCopyWith<$Res>
    implements $NewCaseStateCopyWith<$Res> {
  factory _$$InitialNewCaseStateImplCopyWith(_$InitialNewCaseStateImpl value,
          $Res Function(_$InitialNewCaseStateImpl) then) =
      __$$InitialNewCaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewCaseStatePayload payload});

  @override
  $NewCaseStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialNewCaseStateImplCopyWithImpl<$Res>
    extends _$NewCaseStateCopyWithImpl<$Res, _$InitialNewCaseStateImpl>
    implements _$$InitialNewCaseStateImplCopyWith<$Res> {
  __$$InitialNewCaseStateImplCopyWithImpl(_$InitialNewCaseStateImpl _value,
      $Res Function(_$InitialNewCaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialNewCaseStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as NewCaseStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialNewCaseStateImpl implements _InitialNewCaseState {
  const _$InitialNewCaseStateImpl({required this.payload});

  @override
  final NewCaseStatePayload payload;

  @override
  String toString() {
    return 'NewCaseState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialNewCaseStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialNewCaseStateImplCopyWith<_$InitialNewCaseStateImpl> get copyWith =>
      __$$InitialNewCaseStateImplCopyWithImpl<_$InitialNewCaseStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCaseStatePayload payload) initial,
    required TResult Function(NewCaseStatePayload payload) loading,
    required TResult Function(NewCaseStatePayload payload) createdCase,
    required TResult Function(NewCaseStatePayload payload) error,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCaseStatePayload payload)? initial,
    TResult? Function(NewCaseStatePayload payload)? loading,
    TResult? Function(NewCaseStatePayload payload)? createdCase,
    TResult? Function(NewCaseStatePayload payload)? error,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCaseStatePayload payload)? initial,
    TResult Function(NewCaseStatePayload payload)? loading,
    TResult Function(NewCaseStatePayload payload)? createdCase,
    TResult Function(NewCaseStatePayload payload)? error,
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
    required TResult Function(_InitialNewCaseState value) initial,
    required TResult Function(_LoadingNewCaseState value) loading,
    required TResult Function(_CreatedCaseNewCaseState value) createdCase,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNewCaseState value)? initial,
    TResult? Function(_LoadingNewCaseState value)? loading,
    TResult? Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewCaseState value)? initial,
    TResult Function(_LoadingNewCaseState value)? loading,
    TResult Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNewCaseState implements NewCaseState {
  const factory _InitialNewCaseState(
      {required final NewCaseStatePayload payload}) = _$InitialNewCaseStateImpl;

  @override
  NewCaseStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialNewCaseStateImplCopyWith<_$InitialNewCaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingNewCaseStateImplCopyWith<$Res>
    implements $NewCaseStateCopyWith<$Res> {
  factory _$$LoadingNewCaseStateImplCopyWith(_$LoadingNewCaseStateImpl value,
          $Res Function(_$LoadingNewCaseStateImpl) then) =
      __$$LoadingNewCaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewCaseStatePayload payload});

  @override
  $NewCaseStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingNewCaseStateImplCopyWithImpl<$Res>
    extends _$NewCaseStateCopyWithImpl<$Res, _$LoadingNewCaseStateImpl>
    implements _$$LoadingNewCaseStateImplCopyWith<$Res> {
  __$$LoadingNewCaseStateImplCopyWithImpl(_$LoadingNewCaseStateImpl _value,
      $Res Function(_$LoadingNewCaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingNewCaseStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as NewCaseStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingNewCaseStateImpl implements _LoadingNewCaseState {
  const _$LoadingNewCaseStateImpl({required this.payload});

  @override
  final NewCaseStatePayload payload;

  @override
  String toString() {
    return 'NewCaseState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNewCaseStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingNewCaseStateImplCopyWith<_$LoadingNewCaseStateImpl> get copyWith =>
      __$$LoadingNewCaseStateImplCopyWithImpl<_$LoadingNewCaseStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCaseStatePayload payload) initial,
    required TResult Function(NewCaseStatePayload payload) loading,
    required TResult Function(NewCaseStatePayload payload) createdCase,
    required TResult Function(NewCaseStatePayload payload) error,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCaseStatePayload payload)? initial,
    TResult? Function(NewCaseStatePayload payload)? loading,
    TResult? Function(NewCaseStatePayload payload)? createdCase,
    TResult? Function(NewCaseStatePayload payload)? error,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCaseStatePayload payload)? initial,
    TResult Function(NewCaseStatePayload payload)? loading,
    TResult Function(NewCaseStatePayload payload)? createdCase,
    TResult Function(NewCaseStatePayload payload)? error,
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
    required TResult Function(_InitialNewCaseState value) initial,
    required TResult Function(_LoadingNewCaseState value) loading,
    required TResult Function(_CreatedCaseNewCaseState value) createdCase,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNewCaseState value)? initial,
    TResult? Function(_LoadingNewCaseState value)? loading,
    TResult? Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewCaseState value)? initial,
    TResult Function(_LoadingNewCaseState value)? loading,
    TResult Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingNewCaseState implements NewCaseState {
  const factory _LoadingNewCaseState(
      {required final NewCaseStatePayload payload}) = _$LoadingNewCaseStateImpl;

  @override
  NewCaseStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingNewCaseStateImplCopyWith<_$LoadingNewCaseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedCaseNewCaseStateImplCopyWith<$Res>
    implements $NewCaseStateCopyWith<$Res> {
  factory _$$CreatedCaseNewCaseStateImplCopyWith(
          _$CreatedCaseNewCaseStateImpl value,
          $Res Function(_$CreatedCaseNewCaseStateImpl) then) =
      __$$CreatedCaseNewCaseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewCaseStatePayload payload});

  @override
  $NewCaseStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$CreatedCaseNewCaseStateImplCopyWithImpl<$Res>
    extends _$NewCaseStateCopyWithImpl<$Res, _$CreatedCaseNewCaseStateImpl>
    implements _$$CreatedCaseNewCaseStateImplCopyWith<$Res> {
  __$$CreatedCaseNewCaseStateImplCopyWithImpl(
      _$CreatedCaseNewCaseStateImpl _value,
      $Res Function(_$CreatedCaseNewCaseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$CreatedCaseNewCaseStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as NewCaseStatePayload,
    ));
  }
}

/// @nodoc

class _$CreatedCaseNewCaseStateImpl implements _CreatedCaseNewCaseState {
  const _$CreatedCaseNewCaseStateImpl({required this.payload});

  @override
  final NewCaseStatePayload payload;

  @override
  String toString() {
    return 'NewCaseState.createdCase(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedCaseNewCaseStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedCaseNewCaseStateImplCopyWith<_$CreatedCaseNewCaseStateImpl>
      get copyWith => __$$CreatedCaseNewCaseStateImplCopyWithImpl<
          _$CreatedCaseNewCaseStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCaseStatePayload payload) initial,
    required TResult Function(NewCaseStatePayload payload) loading,
    required TResult Function(NewCaseStatePayload payload) createdCase,
    required TResult Function(NewCaseStatePayload payload) error,
  }) {
    return createdCase(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCaseStatePayload payload)? initial,
    TResult? Function(NewCaseStatePayload payload)? loading,
    TResult? Function(NewCaseStatePayload payload)? createdCase,
    TResult? Function(NewCaseStatePayload payload)? error,
  }) {
    return createdCase?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCaseStatePayload payload)? initial,
    TResult Function(NewCaseStatePayload payload)? loading,
    TResult Function(NewCaseStatePayload payload)? createdCase,
    TResult Function(NewCaseStatePayload payload)? error,
    required TResult orElse(),
  }) {
    if (createdCase != null) {
      return createdCase(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialNewCaseState value) initial,
    required TResult Function(_LoadingNewCaseState value) loading,
    required TResult Function(_CreatedCaseNewCaseState value) createdCase,
    required TResult Function(_ErrorState value) error,
  }) {
    return createdCase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNewCaseState value)? initial,
    TResult? Function(_LoadingNewCaseState value)? loading,
    TResult? Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult? Function(_ErrorState value)? error,
  }) {
    return createdCase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewCaseState value)? initial,
    TResult Function(_LoadingNewCaseState value)? loading,
    TResult Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (createdCase != null) {
      return createdCase(this);
    }
    return orElse();
  }
}

abstract class _CreatedCaseNewCaseState implements NewCaseState {
  const factory _CreatedCaseNewCaseState(
          {required final NewCaseStatePayload payload}) =
      _$CreatedCaseNewCaseStateImpl;

  @override
  NewCaseStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$CreatedCaseNewCaseStateImplCopyWith<_$CreatedCaseNewCaseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res>
    implements $NewCaseStateCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewCaseStatePayload payload});

  @override
  $NewCaseStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$NewCaseStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as NewCaseStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl({required this.payload});

  @override
  final NewCaseStatePayload payload;

  @override
  String toString() {
    return 'NewCaseState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewCaseStatePayload payload) initial,
    required TResult Function(NewCaseStatePayload payload) loading,
    required TResult Function(NewCaseStatePayload payload) createdCase,
    required TResult Function(NewCaseStatePayload payload) error,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewCaseStatePayload payload)? initial,
    TResult? Function(NewCaseStatePayload payload)? loading,
    TResult? Function(NewCaseStatePayload payload)? createdCase,
    TResult? Function(NewCaseStatePayload payload)? error,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewCaseStatePayload payload)? initial,
    TResult Function(NewCaseStatePayload payload)? loading,
    TResult Function(NewCaseStatePayload payload)? createdCase,
    TResult Function(NewCaseStatePayload payload)? error,
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
    required TResult Function(_InitialNewCaseState value) initial,
    required TResult Function(_LoadingNewCaseState value) loading,
    required TResult Function(_CreatedCaseNewCaseState value) createdCase,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNewCaseState value)? initial,
    TResult? Function(_LoadingNewCaseState value)? loading,
    TResult? Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNewCaseState value)? initial,
    TResult Function(_LoadingNewCaseState value)? loading,
    TResult Function(_CreatedCaseNewCaseState value)? createdCase,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements NewCaseState {
  const factory _ErrorState({required final NewCaseStatePayload payload}) =
      _$ErrorStateImpl;

  @override
  NewCaseStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewCaseStatePayload _$NewCaseStatePayloadFromJson(Map<String, dynamic> json) {
  return _NewCaseStatePayload.fromJson(json);
}

/// @nodoc
mixin _$NewCaseStatePayload {
  String? get error => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCaseStatePayloadCopyWith<NewCaseStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCaseStatePayloadCopyWith<$Res> {
  factory $NewCaseStatePayloadCopyWith(
          NewCaseStatePayload value, $Res Function(NewCaseStatePayload) then) =
      _$NewCaseStatePayloadCopyWithImpl<$Res, NewCaseStatePayload>;
  @useResult
  $Res call({String? error, int? page});
}

/// @nodoc
class _$NewCaseStatePayloadCopyWithImpl<$Res, $Val extends NewCaseStatePayload>
    implements $NewCaseStatePayloadCopyWith<$Res> {
  _$NewCaseStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewCaseStatePayloadImplCopyWith<$Res>
    implements $NewCaseStatePayloadCopyWith<$Res> {
  factory _$$NewCaseStatePayloadImplCopyWith(_$NewCaseStatePayloadImpl value,
          $Res Function(_$NewCaseStatePayloadImpl) then) =
      __$$NewCaseStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, int? page});
}

/// @nodoc
class __$$NewCaseStatePayloadImplCopyWithImpl<$Res>
    extends _$NewCaseStatePayloadCopyWithImpl<$Res, _$NewCaseStatePayloadImpl>
    implements _$$NewCaseStatePayloadImplCopyWith<$Res> {
  __$$NewCaseStatePayloadImplCopyWithImpl(_$NewCaseStatePayloadImpl _value,
      $Res Function(_$NewCaseStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
  }) {
    return _then(_$NewCaseStatePayloadImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewCaseStatePayloadImpl implements _NewCaseStatePayload {
  const _$NewCaseStatePayloadImpl({this.error, this.page});

  factory _$NewCaseStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewCaseStatePayloadImplFromJson(json);

  @override
  final String? error;
  @override
  final int? page;

  @override
  String toString() {
    return 'NewCaseStatePayload(error: $error, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewCaseStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCaseStatePayloadImplCopyWith<_$NewCaseStatePayloadImpl> get copyWith =>
      __$$NewCaseStatePayloadImplCopyWithImpl<_$NewCaseStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewCaseStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _NewCaseStatePayload implements NewCaseStatePayload {
  const factory _NewCaseStatePayload({final String? error, final int? page}) =
      _$NewCaseStatePayloadImpl;

  factory _NewCaseStatePayload.fromJson(Map<String, dynamic> json) =
      _$NewCaseStatePayloadImpl.fromJson;

  @override
  String? get error;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$NewCaseStatePayloadImplCopyWith<_$NewCaseStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
