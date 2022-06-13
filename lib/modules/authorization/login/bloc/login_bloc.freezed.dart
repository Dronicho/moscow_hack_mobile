// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verify,
    required TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)
        update,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Verify value) verify,
    required TResult Function(_Update value) update,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$_VerifyCopyWith<$Res> {
  factory _$$_VerifyCopyWith(_$_Verify value, $Res Function(_$_Verify) then) =
      __$$_VerifyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_VerifyCopyWith<$Res> {
  __$$_VerifyCopyWithImpl(_$_Verify _value, $Res Function(_$_Verify) _then)
      : super(_value, (v) => _then(v as _$_Verify));

  @override
  _$_Verify get _value => super._value as _$_Verify;
}

/// @nodoc

class _$_Verify implements _Verify {
  const _$_Verify();

  @override
  String toString() {
    return 'LoginEvent.verify()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verify);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verify,
    required TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)
        update,
    required TResult Function() login,
  }) {
    return verify();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
  }) {
    return verify?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Verify value) verify,
    required TResult Function(_Update value) update,
    required TResult Function(_Login value) login,
  }) {
    return verify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
  }) {
    return verify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (verify != null) {
      return verify(this);
    }
    return orElse();
  }
}

abstract class _Verify implements LoginEvent {
  const factory _Verify() = _$_Verify;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({LoginStrategy? strategy, LoginPayloadDto? payload});

  $LoginPayloadDtoCopyWith<$Res>? get payload;
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? strategy = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_Update(
      strategy: strategy == freezed
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as LoginStrategy?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginPayloadDto?,
    ));
  }

  @override
  $LoginPayloadDtoCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $LoginPayloadDtoCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update({this.strategy, this.payload});

  @override
  final LoginStrategy? strategy;
  @override
  final LoginPayloadDto? payload;

  @override
  String toString() {
    return 'LoginEvent.update(strategy: $strategy, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality().equals(other.strategy, strategy) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(strategy),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verify,
    required TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)
        update,
    required TResult Function() login,
  }) {
    return update(strategy, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
  }) {
    return update?.call(strategy, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(strategy, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Verify value) verify,
    required TResult Function(_Update value) update,
    required TResult Function(_Login value) login,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements LoginEvent {
  const factory _Update(
      {final LoginStrategy? strategy,
      final LoginPayloadDto? payload}) = _$_Update;

  LoginStrategy? get strategy => throw _privateConstructorUsedError;
  LoginPayloadDto? get payload => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, (v) => _then(v as _$_Login));

  @override
  _$_Login get _value => super._value as _$_Login;
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() verify,
    required TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)
        update,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? verify,
    TResult Function(LoginStrategy? strategy, LoginPayloadDto? payload)? update,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Verify value) verify,
    required TResult Function(_Update value) update,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Verify value)? verify,
    TResult Function(_Update value)? update,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login() = _$_Login;
}

/// @nodoc
mixin _$LoginState {
  LoginStrategy get strategy => throw _privateConstructorUsedError;
  LoginPayload get payload => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStrategy strategy, LoginPayload payload)
        data,
    required TResult Function(LoginStrategy strategy, LoginPayload payload)
        verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginStrategy strategy, LoginPayload payload)? data,
    TResult Function(LoginStrategy strategy, LoginPayload payload)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStrategy strategy, LoginPayload payload)? data,
    TResult Function(LoginStrategy strategy, LoginPayload payload)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Verified value) verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Verified value)? verified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call({LoginStrategy strategy, LoginPayload payload});

  $LoginPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? strategy = freezed,
    Object? payload = freezed,
  }) {
    return _then(_value.copyWith(
      strategy: strategy == freezed
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as LoginStrategy,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginPayload,
    ));
  }

  @override
  $LoginPayloadCopyWith<$Res> get payload {
    return $LoginPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call({LoginStrategy strategy, LoginPayload payload});

  @override
  $LoginPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? strategy = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_Data(
      strategy: strategy == freezed
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as LoginStrategy,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginPayload,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data({required this.strategy, required this.payload});

  @override
  final LoginStrategy strategy;
  @override
  final LoginPayload payload;

  @override
  String toString() {
    return 'LoginState.data(strategy: $strategy, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.strategy, strategy) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(strategy),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStrategy strategy, LoginPayload payload)
        data,
    required TResult Function(LoginStrategy strategy, LoginPayload payload)
        verified,
  }) {
    return data(strategy, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginStrategy strategy, LoginPayload payload)? data,
    TResult Function(LoginStrategy strategy, LoginPayload payload)? verified,
  }) {
    return data?.call(strategy, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStrategy strategy, LoginPayload payload)? data,
    TResult Function(LoginStrategy strategy, LoginPayload payload)? verified,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(strategy, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Verified value) verified,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Verified value)? verified,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements LoginState {
  const factory _Data(
      {required final LoginStrategy strategy,
      required final LoginPayload payload}) = _$_Data;

  @override
  LoginStrategy get strategy => throw _privateConstructorUsedError;
  @override
  LoginPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifiedCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$_VerifiedCopyWith(
          _$_Verified value, $Res Function(_$_Verified) then) =
      __$$_VerifiedCopyWithImpl<$Res>;
  @override
  $Res call({LoginStrategy strategy, LoginPayload payload});

  @override
  $LoginPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$_VerifiedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$_VerifiedCopyWith<$Res> {
  __$$_VerifiedCopyWithImpl(
      _$_Verified _value, $Res Function(_$_Verified) _then)
      : super(_value, (v) => _then(v as _$_Verified));

  @override
  _$_Verified get _value => super._value as _$_Verified;

  @override
  $Res call({
    Object? strategy = freezed,
    Object? payload = freezed,
  }) {
    return _then(_$_Verified(
      strategy: strategy == freezed
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as LoginStrategy,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as LoginPayload,
    ));
  }
}

/// @nodoc

class _$_Verified implements _Verified {
  const _$_Verified({required this.strategy, required this.payload});

  @override
  final LoginStrategy strategy;
  @override
  final LoginPayload payload;

  @override
  String toString() {
    return 'LoginState.verified(strategy: $strategy, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verified &&
            const DeepCollectionEquality().equals(other.strategy, strategy) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(strategy),
      const DeepCollectionEquality().hash(payload));

  @JsonKey(ignore: true)
  @override
  _$$_VerifiedCopyWith<_$_Verified> get copyWith =>
      __$$_VerifiedCopyWithImpl<_$_Verified>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStrategy strategy, LoginPayload payload)
        data,
    required TResult Function(LoginStrategy strategy, LoginPayload payload)
        verified,
  }) {
    return verified(strategy, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginStrategy strategy, LoginPayload payload)? data,
    TResult Function(LoginStrategy strategy, LoginPayload payload)? verified,
  }) {
    return verified?.call(strategy, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStrategy strategy, LoginPayload payload)? data,
    TResult Function(LoginStrategy strategy, LoginPayload payload)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(strategy, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
    required TResult Function(_Verified value) verified,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Verified value)? verified,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    TResult Function(_Verified value)? verified,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements LoginState {
  const factory _Verified(
      {required final LoginStrategy strategy,
      required final LoginPayload payload}) = _$_Verified;

  @override
  LoginStrategy get strategy => throw _privateConstructorUsedError;
  @override
  LoginPayload get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VerifiedCopyWith<_$_Verified> get copyWith =>
      throw _privateConstructorUsedError;
}
