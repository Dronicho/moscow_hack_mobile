// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterDto _$$_FilterDtoFromJson(Map<String, dynamic> json) => _$_FilterDto(
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_FilterDtoToJson(_$_FilterDto instance) =>
    <String, dynamic>{
      'roles': instance.roles,
      'tags': instance.tags,
      'skills': instance.skills,
    };
