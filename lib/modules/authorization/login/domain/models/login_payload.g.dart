// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Volonteer _$$_VolonteerFromJson(Map<String, dynamic> json) => _$_Volonteer(
      password: json['password'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      age: json['age'] as int?,
      city: json['city'] as String?,
      description: json['description'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_VolonteerToJson(_$_Volonteer instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'name': instance.name,
      'age': instance.age,
      'city': instance.city,
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$_Nko _$$_NkoFromJson(Map<String, dynamic> json) => _$_Nko(
      password: json['password'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      description: json['description'] as String?,
      INN: json['INN'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_NkoToJson(_$_Nko instance) => <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'city': instance.city,
      'description': instance.description,
      'INN': instance.INN,
      'runtimeType': instance.$type,
    };

_$_Business _$$_BusinessFromJson(Map<String, dynamic> json) => _$_Business(
      password: json['password'] as String?,
      email: json['email'] as String?,
      city: json['city'] as String?,
      description: json['description'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'password': instance.password,
      'email': instance.email,
      'city': instance.city,
      'description': instance.description,
      'runtimeType': instance.$type,
    };
