// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  AuthStatePayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload payload) initial,
    required TResult Function(AuthStatePayload payload) loading,
    required TResult Function(AuthStatePayload payload) error,
    required TResult Function(AuthStatePayload payload) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload payload)? initial,
    TResult? Function(AuthStatePayload payload)? loading,
    TResult? Function(AuthStatePayload payload)? error,
    TResult? Function(AuthStatePayload payload)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload payload)? initial,
    TResult Function(AuthStatePayload payload)? loading,
    TResult Function(AuthStatePayload payload)? error,
    TResult Function(AuthStatePayload payload)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_LoginAuthState value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_LoginAuthState value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_LoginAuthState value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatePayload payload});

  $AuthStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

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
              as AuthStatePayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStatePayloadCopyWith<$Res> get payload {
    return $AuthStatePayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialAuthStateImplCopyWith(_$InitialAuthStateImpl value,
          $Res Function(_$InitialAuthStateImpl) then) =
      __$$InitialAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload payload});

  @override
  $AuthStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitialAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialAuthStateImpl>
    implements _$$InitialAuthStateImplCopyWith<$Res> {
  __$$InitialAuthStateImplCopyWithImpl(_$InitialAuthStateImpl _value,
      $Res Function(_$InitialAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$InitialAuthStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload,
    ));
  }
}

/// @nodoc

class _$InitialAuthStateImpl implements _InitialAuthState {
  const _$InitialAuthStateImpl({required this.payload});

  @override
  final AuthStatePayload payload;

  @override
  String toString() {
    return 'AuthState.initial(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialAuthStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialAuthStateImplCopyWith<_$InitialAuthStateImpl> get copyWith =>
      __$$InitialAuthStateImplCopyWithImpl<_$InitialAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload payload) initial,
    required TResult Function(AuthStatePayload payload) loading,
    required TResult Function(AuthStatePayload payload) error,
    required TResult Function(AuthStatePayload payload) login,
  }) {
    return initial(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload payload)? initial,
    TResult? Function(AuthStatePayload payload)? loading,
    TResult? Function(AuthStatePayload payload)? error,
    TResult? Function(AuthStatePayload payload)? login,
  }) {
    return initial?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload payload)? initial,
    TResult Function(AuthStatePayload payload)? loading,
    TResult Function(AuthStatePayload payload)? error,
    TResult Function(AuthStatePayload payload)? login,
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
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_LoginAuthState value) login,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_LoginAuthState value)? login,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_LoginAuthState value)? login,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAuthState implements AuthState {
  const factory _InitialAuthState({required final AuthStatePayload payload}) =
      _$InitialAuthStateImpl;

  @override
  AuthStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$InitialAuthStateImplCopyWith<_$InitialAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoadingAuthStateImplCopyWith(_$LoadingAuthStateImpl value,
          $Res Function(_$LoadingAuthStateImpl) then) =
      __$$LoadingAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload payload});

  @override
  $AuthStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoadingAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingAuthStateImpl>
    implements _$$LoadingAuthStateImplCopyWith<$Res> {
  __$$LoadingAuthStateImplCopyWithImpl(_$LoadingAuthStateImpl _value,
      $Res Function(_$LoadingAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoadingAuthStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload,
    ));
  }
}

/// @nodoc

class _$LoadingAuthStateImpl implements _LoadingAuthState {
  const _$LoadingAuthStateImpl({required this.payload});

  @override
  final AuthStatePayload payload;

  @override
  String toString() {
    return 'AuthState.loading(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAuthStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingAuthStateImplCopyWith<_$LoadingAuthStateImpl> get copyWith =>
      __$$LoadingAuthStateImplCopyWithImpl<_$LoadingAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload payload) initial,
    required TResult Function(AuthStatePayload payload) loading,
    required TResult Function(AuthStatePayload payload) error,
    required TResult Function(AuthStatePayload payload) login,
  }) {
    return loading(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload payload)? initial,
    TResult? Function(AuthStatePayload payload)? loading,
    TResult? Function(AuthStatePayload payload)? error,
    TResult? Function(AuthStatePayload payload)? login,
  }) {
    return loading?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload payload)? initial,
    TResult Function(AuthStatePayload payload)? loading,
    TResult Function(AuthStatePayload payload)? error,
    TResult Function(AuthStatePayload payload)? login,
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
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_LoginAuthState value) login,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_LoginAuthState value)? login,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_LoginAuthState value)? login,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAuthState implements AuthState {
  const factory _LoadingAuthState({required final AuthStatePayload payload}) =
      _$LoadingAuthStateImpl;

  @override
  AuthStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoadingAuthStateImplCopyWith<_$LoadingAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$ErrorAuthStateImplCopyWith(_$ErrorAuthStateImpl value,
          $Res Function(_$ErrorAuthStateImpl) then) =
      __$$ErrorAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload payload});

  @override
  $AuthStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$ErrorAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorAuthStateImpl>
    implements _$$ErrorAuthStateImplCopyWith<$Res> {
  __$$ErrorAuthStateImplCopyWithImpl(
      _$ErrorAuthStateImpl _value, $Res Function(_$ErrorAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$ErrorAuthStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload,
    ));
  }
}

/// @nodoc

class _$ErrorAuthStateImpl implements _ErrorAuthState {
  const _$ErrorAuthStateImpl({required this.payload});

  @override
  final AuthStatePayload payload;

  @override
  String toString() {
    return 'AuthState.error(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthStateImplCopyWith<_$ErrorAuthStateImpl> get copyWith =>
      __$$ErrorAuthStateImplCopyWithImpl<_$ErrorAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload payload) initial,
    required TResult Function(AuthStatePayload payload) loading,
    required TResult Function(AuthStatePayload payload) error,
    required TResult Function(AuthStatePayload payload) login,
  }) {
    return error(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload payload)? initial,
    TResult? Function(AuthStatePayload payload)? loading,
    TResult? Function(AuthStatePayload payload)? error,
    TResult? Function(AuthStatePayload payload)? login,
  }) {
    return error?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload payload)? initial,
    TResult Function(AuthStatePayload payload)? loading,
    TResult Function(AuthStatePayload payload)? error,
    TResult Function(AuthStatePayload payload)? login,
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
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_LoginAuthState value) login,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_LoginAuthState value)? login,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_LoginAuthState value)? login,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthState implements AuthState {
  const factory _ErrorAuthState({required final AuthStatePayload payload}) =
      _$ErrorAuthStateImpl;

  @override
  AuthStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAuthStateImplCopyWith<_$ErrorAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginAuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoginAuthStateImplCopyWith(_$LoginAuthStateImpl value,
          $Res Function(_$LoginAuthStateImpl) then) =
      __$$LoginAuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatePayload payload});

  @override
  $AuthStatePayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$LoginAuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginAuthStateImpl>
    implements _$$LoginAuthStateImplCopyWith<$Res> {
  __$$LoginAuthStateImplCopyWithImpl(
      _$LoginAuthStateImpl _value, $Res Function(_$LoginAuthStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$LoginAuthStateImpl(
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as AuthStatePayload,
    ));
  }
}

/// @nodoc

class _$LoginAuthStateImpl implements _LoginAuthState {
  const _$LoginAuthStateImpl({required this.payload});

  @override
  final AuthStatePayload payload;

  @override
  String toString() {
    return 'AuthState.login(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAuthStateImpl &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginAuthStateImplCopyWith<_$LoginAuthStateImpl> get copyWith =>
      __$$LoginAuthStateImplCopyWithImpl<_$LoginAuthStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthStatePayload payload) initial,
    required TResult Function(AuthStatePayload payload) loading,
    required TResult Function(AuthStatePayload payload) error,
    required TResult Function(AuthStatePayload payload) login,
  }) {
    return login(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthStatePayload payload)? initial,
    TResult? Function(AuthStatePayload payload)? loading,
    TResult? Function(AuthStatePayload payload)? error,
    TResult? Function(AuthStatePayload payload)? login,
  }) {
    return login?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthStatePayload payload)? initial,
    TResult Function(AuthStatePayload payload)? loading,
    TResult Function(AuthStatePayload payload)? error,
    TResult Function(AuthStatePayload payload)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAuthState value) initial,
    required TResult Function(_LoadingAuthState value) loading,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_LoginAuthState value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialAuthState value)? initial,
    TResult? Function(_LoadingAuthState value)? loading,
    TResult? Function(_ErrorAuthState value)? error,
    TResult? Function(_LoginAuthState value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAuthState value)? initial,
    TResult Function(_LoadingAuthState value)? loading,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_LoginAuthState value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _LoginAuthState implements AuthState {
  const factory _LoginAuthState({required final AuthStatePayload payload}) =
      _$LoginAuthStateImpl;

  @override
  AuthStatePayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$LoginAuthStateImplCopyWith<_$LoginAuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthStatePayload _$AuthStatePayloadFromJson(Map<String, dynamic> json) {
  return _AuthStatePayload.fromJson(json);
}

/// @nodoc
mixin _$AuthStatePayload {
  String? get error => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  AuthResponseModel? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStatePayloadCopyWith<AuthStatePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatePayloadCopyWith<$Res> {
  factory $AuthStatePayloadCopyWith(
          AuthStatePayload value, $Res Function(AuthStatePayload) then) =
      _$AuthStatePayloadCopyWithImpl<$Res, AuthStatePayload>;
  @useResult
  $Res call({String? error, int? page, AuthResponseModel? user});

  $AuthResponseModelCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStatePayloadCopyWithImpl<$Res, $Val extends AuthStatePayload>
    implements $AuthStatePayloadCopyWith<$Res> {
  _$AuthStatePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
    Object? user = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthResponseModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AuthResponseModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStatePayloadImplCopyWith<$Res>
    implements $AuthStatePayloadCopyWith<$Res> {
  factory _$$AuthStatePayloadImplCopyWith(_$AuthStatePayloadImpl value,
          $Res Function(_$AuthStatePayloadImpl) then) =
      __$$AuthStatePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? error, int? page, AuthResponseModel? user});

  @override
  $AuthResponseModelCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthStatePayloadImplCopyWithImpl<$Res>
    extends _$AuthStatePayloadCopyWithImpl<$Res, _$AuthStatePayloadImpl>
    implements _$$AuthStatePayloadImplCopyWith<$Res> {
  __$$AuthStatePayloadImplCopyWithImpl(_$AuthStatePayloadImpl _value,
      $Res Function(_$AuthStatePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? page = freezed,
    Object? user = freezed,
  }) {
    return _then(_$AuthStatePayloadImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthStatePayloadImpl implements _AuthStatePayload {
  const _$AuthStatePayloadImpl({this.error, this.page, this.user});

  factory _$AuthStatePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthStatePayloadImplFromJson(json);

  @override
  final String? error;
  @override
  final int? page;
  @override
  final AuthResponseModel? user;

  @override
  String toString() {
    return 'AuthStatePayload(error: $error, page: $page, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStatePayloadImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, page, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStatePayloadImplCopyWith<_$AuthStatePayloadImpl> get copyWith =>
      __$$AuthStatePayloadImplCopyWithImpl<_$AuthStatePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthStatePayloadImplToJson(
      this,
    );
  }
}

abstract class _AuthStatePayload implements AuthStatePayload {
  const factory _AuthStatePayload(
      {final String? error,
      final int? page,
      final AuthResponseModel? user}) = _$AuthStatePayloadImpl;

  factory _AuthStatePayload.fromJson(Map<String, dynamic> json) =
      _$AuthStatePayloadImpl.fromJson;

  @override
  String? get error;
  @override
  int? get page;
  @override
  AuthResponseModel? get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthStatePayloadImplCopyWith<_$AuthStatePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
