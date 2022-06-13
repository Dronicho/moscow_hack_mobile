// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_payload_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPayloadDto _$LoginPayloadDtoFromJson(Map<String, dynamic> json) {
  return _LoginPayloadDto.fromJson(json);
}

/// @nodoc
mixin _$LoginPayloadDto {
  String? get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get INN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPayloadDtoCopyWith<LoginPayloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayloadDtoCopyWith<$Res> {
  factory $LoginPayloadDtoCopyWith(
          LoginPayloadDto value, $Res Function(LoginPayloadDto) then) =
      _$LoginPayloadDtoCopyWithImpl<$Res>;
  $Res call(
      {String? password,
      String? email,
      String? name,
      int? age,
      String? city,
      String? description,
      String? INN});
}

/// @nodoc
class _$LoginPayloadDtoCopyWithImpl<$Res>
    implements $LoginPayloadDtoCopyWith<$Res> {
  _$LoginPayloadDtoCopyWithImpl(this._value, this._then);

  final LoginPayloadDto _value;
  // ignore: unused_field
  final $Res Function(LoginPayloadDto) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? city = freezed,
    Object? description = freezed,
    Object? INN = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      INN: INN == freezed
          ? _value.INN
          : INN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginPayloadDtoCopyWith<$Res>
    implements $LoginPayloadDtoCopyWith<$Res> {
  factory _$$_LoginPayloadDtoCopyWith(
          _$_LoginPayloadDto value, $Res Function(_$_LoginPayloadDto) then) =
      __$$_LoginPayloadDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? password,
      String? email,
      String? name,
      int? age,
      String? city,
      String? description,
      String? INN});
}

/// @nodoc
class __$$_LoginPayloadDtoCopyWithImpl<$Res>
    extends _$LoginPayloadDtoCopyWithImpl<$Res>
    implements _$$_LoginPayloadDtoCopyWith<$Res> {
  __$$_LoginPayloadDtoCopyWithImpl(
      _$_LoginPayloadDto _value, $Res Function(_$_LoginPayloadDto) _then)
      : super(_value, (v) => _then(v as _$_LoginPayloadDto));

  @override
  _$_LoginPayloadDto get _value => super._value as _$_LoginPayloadDto;

  @override
  $Res call({
    Object? password = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? city = freezed,
    Object? description = freezed,
    Object? INN = freezed,
  }) {
    return _then(_$_LoginPayloadDto(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      INN: INN == freezed
          ? _value.INN
          : INN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginPayloadDto implements _LoginPayloadDto {
  const _$_LoginPayloadDto(
      {this.password,
      this.email,
      this.name,
      this.age,
      this.city,
      this.description,
      this.INN});

  factory _$_LoginPayloadDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginPayloadDtoFromJson(json);

  @override
  final String? password;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final int? age;
  @override
  final String? city;
  @override
  final String? description;
// ignore: non_constant_identifier_names
  @override
  final String? INN;

  @override
  String toString() {
    return 'LoginPayloadDto(password: $password, email: $email, name: $name, age: $age, city: $city, description: $description, INN: $INN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginPayloadDto &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.INN, INN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(INN));

  @JsonKey(ignore: true)
  @override
  _$$_LoginPayloadDtoCopyWith<_$_LoginPayloadDto> get copyWith =>
      __$$_LoginPayloadDtoCopyWithImpl<_$_LoginPayloadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginPayloadDtoToJson(this);
  }
}

abstract class _LoginPayloadDto implements LoginPayloadDto {
  const factory _LoginPayloadDto(
      {final String? password,
      final String? email,
      final String? name,
      final int? age,
      final String? city,
      final String? description,
      final String? INN}) = _$_LoginPayloadDto;

  factory _LoginPayloadDto.fromJson(Map<String, dynamic> json) =
      _$_LoginPayloadDto.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  int? get age => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  String? get INN => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginPayloadDtoCopyWith<_$_LoginPayloadDto> get copyWith =>
      throw _privateConstructorUsedError;
}
