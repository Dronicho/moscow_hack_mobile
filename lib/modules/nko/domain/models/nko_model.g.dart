// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nko_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NkoModel _$$_NkoModelFromJson(Map<String, dynamic> json) => _$_NkoModel(
      photoURL: json['photoURL'] as String?,
      name: json['name'] as String,
      id: json['ID'] as String,
      description: json['description'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      inn: json['INN'] as String? ?? '',
    );

Map<String, dynamic> _$$_NkoModelToJson(_$_NkoModel instance) =>
    <String, dynamic>{
      'photoURL': instance.photoURL,
      'name': instance.name,
      'ID': instance.id,
      'description': instance.description,
      'rating': instance.rating,
      'tags': instance.tags,
      'INN': instance.inn,
    };
