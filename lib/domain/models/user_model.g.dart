// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['ID'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      age: json['age'] as int? ?? 0,
      rating: (json['rating'] as num?)?.toDouble() ?? 2.5,
      city: json['city'] as String? ?? '',
      photoURL: json['photoURL'] as String?,
      description: json['description'] as String? ?? '',
      registeredProjects: (json['registeredProjects'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      rates: (json['rates'] as List<dynamic>?)
              ?.map((e) => FeedbackModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FeedbackModel>[],
      contact: json['contact'] == null
          ? const Contact()
          : Contact.fromJson(json['contact'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'name': instance.name,
      'email': instance.email,
      'age': instance.age,
      'rating': instance.rating,
      'city': instance.city,
      'photoURL': instance.photoURL,
      'description': instance.description,
      'registeredProjects': instance.registeredProjects,
      'rates': instance.rates,
      'contact': instance.contact,
    };

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      type: json['type'] as String? ?? 'telegram',
      value: json['value'] as String? ?? 'andronax',
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
