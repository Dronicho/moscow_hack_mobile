// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectModel _$$_ProjectModelFromJson(Map<String, dynamic> json) =>
    _$_ProjectModel(
      id: json['ID'] as String,
      name: json['name'] as String,
      authorID: json['authorID'] as String,
      description: json['description'] as String,
      shortDescription: json['shortDescription'] as String?,
      ageStart: json['ageStart'] as int,
      ageEnd: json['ageEnd'] as int,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      website: json['website'] as String,
      deadline: DateTime.parse(json['deadline'] as String),
      timeStart: DateTime.parse(json['timeStart'] as String),
      timeEnd: DateTime.parse(json['timeEnd'] as String),
      participation: json['participation'] as String? ?? '',
      location: json['location'] as String? ?? '',
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      requirements: (json['requirements'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      services: (json['services'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      participants: (json['participants'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$$_ProjectModelToJson(_$_ProjectModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'name': instance.name,
      'authorID': instance.authorID,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'ageStart': instance.ageStart,
      'ageEnd': instance.ageEnd,
      'tags': instance.tags,
      'website': instance.website,
      'deadline': instance.deadline.toIso8601String(),
      'timeStart': instance.timeStart.toIso8601String(),
      'timeEnd': instance.timeEnd.toIso8601String(),
      'participation': instance.participation,
      'location': instance.location,
      'skills': instance.skills,
      'roles': instance.roles,
      'requirements': instance.requirements,
      'services': instance.services,
      'participants': instance.participants,
      'photoURL': instance.photoURL,
    };
