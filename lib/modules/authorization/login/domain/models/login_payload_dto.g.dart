// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_payload_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginPayloadDto _$$_LoginPayloadDtoFromJson(Map<String, dynamic> json) =>
    _$_LoginPayloadDto(
      password: json['password'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      city: json['city'] as String?,
      description: json['description'] as String?,
      INN: json['INN'] as String?,
    );

Map<String, dynamic> _$$_LoginPayloadDtoToJson(_$_LoginPayloadDto instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'city': instance.city,
      'description': instance.description,
      'INN': instance.INN,
    };
