// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_projects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProjectsResponse _$$_UserProjectsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserProjectsResponse(
      createdProjects: (json['createdProjects'] as List<dynamic>)
          .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      memberProjects: (json['memberProjects'] as List<dynamic>)
          .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserProjectsResponseToJson(
        _$_UserProjectsResponse instance) =>
    <String, dynamic>{
      'createdProjects': instance.createdProjects,
      'memberProjects': instance.memberProjects,
    };
