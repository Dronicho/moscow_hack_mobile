// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginPayload _$LoginPayloadFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'volonteer':
      return _Volonteer.fromJson(json);
    case 'nko':
      return _Nko.fromJson(json);
    case 'business':
      return _Business.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoginPayload',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LoginPayload {
  String? get password => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? password, String? email, String? name,
            int? age, String? city, String? description)
        volonteer,
    required TResult Function(String? password, String? email, String? city,
            String? description, String? INN)
        nko,
    required TResult Function(
            String? password, String? email, String? city, String? description)
        business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Volonteer value) volonteer,
    required TResult Function(_Nko value) nko,
    required TResult Function(_Business value) business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginPayloadCopyWith<LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayloadCopyWith<$Res> {
  factory $LoginPayloadCopyWith(
          LoginPayload value, $Res Function(LoginPayload) then) =
      _$LoginPayloadCopyWithImpl<$Res>;
  $Res call(
      {String? password, String? email, String? city, String? description});
}

/// @nodoc
class _$LoginPayloadCopyWithImpl<$Res> implements $LoginPayloadCopyWith<$Res> {
  _$LoginPayloadCopyWithImpl(this._value, this._then);

  final LoginPayload _value;
  // ignore: unused_field
  final $Res Function(LoginPayload) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? description = freezed,
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
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_VolonteerCopyWith<$Res>
    implements $LoginPayloadCopyWith<$Res> {
  factory _$$_VolonteerCopyWith(
          _$_Volonteer value, $Res Function(_$_Volonteer) then) =
      __$$_VolonteerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? password,
      String? email,
      String? name,
      int? age,
      String? city,
      String? description});
}

/// @nodoc
class __$$_VolonteerCopyWithImpl<$Res> extends _$LoginPayloadCopyWithImpl<$Res>
    implements _$$_VolonteerCopyWith<$Res> {
  __$$_VolonteerCopyWithImpl(
      _$_Volonteer _value, $Res Function(_$_Volonteer) _then)
      : super(_value, (v) => _then(v as _$_Volonteer));

  @override
  _$_Volonteer get _value => super._value as _$_Volonteer;

  @override
  $Res call({
    Object? password = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? city = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Volonteer(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Volonteer implements _Volonteer {
  const _$_Volonteer(
      {this.password,
      this.email,
      this.name,
      this.age,
      this.city,
      this.description,
      final String? $type})
      : $type = $type ?? 'volonteer';

  factory _$_Volonteer.fromJson(Map<String, dynamic> json) =>
      _$$_VolonteerFromJson(json);

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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPayload.volonteer(password: $password, email: $email, name: $name, age: $age, city: $city, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Volonteer &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
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
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_VolonteerCopyWith<_$_Volonteer> get copyWith =>
      __$$_VolonteerCopyWithImpl<_$_Volonteer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? password, String? email, String? name,
            int? age, String? city, String? description)
        volonteer,
    required TResult Function(String? password, String? email, String? city,
            String? description, String? INN)
        nko,
    required TResult Function(
            String? password, String? email, String? city, String? description)
        business,
  }) {
    return volonteer(password, email, name, age, city, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
  }) {
    return volonteer?.call(password, email, name, age, city, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
    required TResult orElse(),
  }) {
    if (volonteer != null) {
      return volonteer(password, email, name, age, city, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Volonteer value) volonteer,
    required TResult Function(_Nko value) nko,
    required TResult Function(_Business value) business,
  }) {
    return volonteer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
  }) {
    return volonteer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
    required TResult orElse(),
  }) {
    if (volonteer != null) {
      return volonteer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_VolonteerToJson(this);
  }
}

abstract class _Volonteer implements LoginPayload {
  const factory _Volonteer(
      {final String? password,
      final String? email,
      final String? name,
      final int? age,
      final String? city,
      final String? description}) = _$_Volonteer;

  factory _Volonteer.fromJson(Map<String, dynamic> json) =
      _$_Volonteer.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VolonteerCopyWith<_$_Volonteer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NkoCopyWith<$Res> implements $LoginPayloadCopyWith<$Res> {
  factory _$$_NkoCopyWith(_$_Nko value, $Res Function(_$_Nko) then) =
      __$$_NkoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? password,
      String? email,
      String? city,
      String? description,
      String? INN});
}

/// @nodoc
class __$$_NkoCopyWithImpl<$Res> extends _$LoginPayloadCopyWithImpl<$Res>
    implements _$$_NkoCopyWith<$Res> {
  __$$_NkoCopyWithImpl(_$_Nko _value, $Res Function(_$_Nko) _then)
      : super(_value, (v) => _then(v as _$_Nko));

  @override
  _$_Nko get _value => super._value as _$_Nko;

  @override
  $Res call({
    Object? password = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? description = freezed,
    Object? INN = freezed,
  }) {
    return _then(_$_Nko(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Nko implements _Nko {
  const _$_Nko(
      {this.password,
      this.email,
      this.city,
      this.description,
      this.INN,
      final String? $type})
      : $type = $type ?? 'nko';

  factory _$_Nko.fromJson(Map<String, dynamic> json) => _$$_NkoFromJson(json);

  @override
  final String? password;
  @override
  final String? email;
  @override
  final String? city;
  @override
  final String? description;
// ignore: non_constant_identifier_names
  @override
  final String? INN;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPayload.nko(password: $password, email: $email, city: $city, description: $description, INN: $INN)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nko &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.email, email) &&
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
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(INN));

  @JsonKey(ignore: true)
  @override
  _$$_NkoCopyWith<_$_Nko> get copyWith =>
      __$$_NkoCopyWithImpl<_$_Nko>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? password, String? email, String? name,
            int? age, String? city, String? description)
        volonteer,
    required TResult Function(String? password, String? email, String? city,
            String? description, String? INN)
        nko,
    required TResult Function(
            String? password, String? email, String? city, String? description)
        business,
  }) {
    return nko(password, email, city, description, INN);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
  }) {
    return nko?.call(password, email, city, description, INN);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
    required TResult orElse(),
  }) {
    if (nko != null) {
      return nko(password, email, city, description, INN);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Volonteer value) volonteer,
    required TResult Function(_Nko value) nko,
    required TResult Function(_Business value) business,
  }) {
    return nko(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
  }) {
    return nko?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
    required TResult orElse(),
  }) {
    if (nko != null) {
      return nko(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NkoToJson(this);
  }
}

abstract class _Nko implements LoginPayload {
  const factory _Nko(
      {final String? password,
      final String? email,
      final String? city,
      final String? description,
      final String? INN}) = _$_Nko;

  factory _Nko.fromJson(Map<String, dynamic> json) = _$_Nko.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get description =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get INN => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NkoCopyWith<_$_Nko> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BusinessCopyWith<$Res>
    implements $LoginPayloadCopyWith<$Res> {
  factory _$$_BusinessCopyWith(
          _$_Business value, $Res Function(_$_Business) then) =
      __$$_BusinessCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? password, String? email, String? city, String? description});
}

/// @nodoc
class __$$_BusinessCopyWithImpl<$Res> extends _$LoginPayloadCopyWithImpl<$Res>
    implements _$$_BusinessCopyWith<$Res> {
  __$$_BusinessCopyWithImpl(
      _$_Business _value, $Res Function(_$_Business) _then)
      : super(_value, (v) => _then(v as _$_Business));

  @override
  _$_Business get _value => super._value as _$_Business;

  @override
  $Res call({
    Object? password = freezed,
    Object? email = freezed,
    Object? city = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Business(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Business implements _Business {
  const _$_Business(
      {this.password,
      this.email,
      this.city,
      this.description,
      final String? $type})
      : $type = $type ?? 'business';

  factory _$_Business.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessFromJson(json);

  @override
  final String? password;
  @override
  final String? email;
  @override
  final String? city;
  @override
  final String? description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LoginPayload.business(password: $password, email: $email, city: $city, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Business &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      __$$_BusinessCopyWithImpl<_$_Business>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? password, String? email, String? name,
            int? age, String? city, String? description)
        volonteer,
    required TResult Function(String? password, String? email, String? city,
            String? description, String? INN)
        nko,
    required TResult Function(
            String? password, String? email, String? city, String? description)
        business,
  }) {
    return business(password, email, city, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
  }) {
    return business?.call(password, email, city, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? password, String? email, String? name, int? age,
            String? city, String? description)?
        volonteer,
    TResult Function(String? password, String? email, String? city,
            String? description, String? INN)?
        nko,
    TResult Function(
            String? password, String? email, String? city, String? description)?
        business,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(password, email, city, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Volonteer value) volonteer,
    required TResult Function(_Nko value) nko,
    required TResult Function(_Business value) business,
  }) {
    return business(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
  }) {
    return business?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Volonteer value)? volonteer,
    TResult Function(_Nko value)? nko,
    TResult Function(_Business value)? business,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessToJson(this);
  }
}

abstract class _Business implements LoginPayload {
  const factory _Business(
      {final String? password,
      final String? email,
      final String? city,
      final String? description}) = _$_Business;

  factory _Business.fromJson(Map<String, dynamic> json) = _$_Business.fromJson;

  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get city => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BusinessCopyWith<_$_Business> get copyWith =>
      throw _privateConstructorUsedError;
}
