// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthDataModel {
  String get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  LoginStrategy get strategy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthDataModelCopyWith<AuthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataModelCopyWith<$Res> {
  factory $AuthDataModelCopyWith(
          AuthDataModel value, $Res Function(AuthDataModel) then) =
      _$AuthDataModelCopyWithImpl<$Res>;
  $Res call({String accessToken, String? refreshToken, LoginStrategy strategy});
}

/// @nodoc
class _$AuthDataModelCopyWithImpl<$Res>
    implements $AuthDataModelCopyWith<$Res> {
  _$AuthDataModelCopyWithImpl(this._value, this._then);

  final AuthDataModel _value;
  // ignore: unused_field
  final $Res Function(AuthDataModel) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? strategy = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      strategy: strategy == freezed
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as LoginStrategy,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthDataModelCopyWith<$Res>
    implements $AuthDataModelCopyWith<$Res> {
  factory _$$_AuthDataModelCopyWith(
          _$_AuthDataModel value, $Res Function(_$_AuthDataModel) then) =
      __$$_AuthDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String? refreshToken, LoginStrategy strategy});
}

/// @nodoc
class __$$_AuthDataModelCopyWithImpl<$Res>
    extends _$AuthDataModelCopyWithImpl<$Res>
    implements _$$_AuthDataModelCopyWith<$Res> {
  __$$_AuthDataModelCopyWithImpl(
      _$_AuthDataModel _value, $Res Function(_$_AuthDataModel) _then)
      : super(_value, (v) => _then(v as _$_AuthDataModel));

  @override
  _$_AuthDataModel get _value => super._value as _$_AuthDataModel;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? strategy = freezed,
  }) {
    return _then(_$_AuthDataModel(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      strategy: strategy == freezed
          ? _value.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as LoginStrategy,
    ));
  }
}

/// @nodoc

class _$_AuthDataModel implements _AuthDataModel {
  _$_AuthDataModel(
      {required this.accessToken,
      required this.refreshToken,
      required this.strategy});

  @override
  final String accessToken;
  @override
  final String? refreshToken;
  @override
  final LoginStrategy strategy;

  @override
  String toString() {
    return 'AuthDataModel(accessToken: $accessToken, refreshToken: $refreshToken, strategy: $strategy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDataModel &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.strategy, strategy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(strategy));

  @JsonKey(ignore: true)
  @override
  _$$_AuthDataModelCopyWith<_$_AuthDataModel> get copyWith =>
      __$$_AuthDataModelCopyWithImpl<_$_AuthDataModel>(this, _$identity);
}

abstract class _AuthDataModel implements AuthDataModel {
  factory _AuthDataModel(
      {required final String accessToken,
      required final String? refreshToken,
      required final LoginStrategy strategy}) = _$_AuthDataModel;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String? get refreshToken => throw _privateConstructorUsedError;
  @override
  LoginStrategy get strategy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDataModelCopyWith<_$_AuthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
