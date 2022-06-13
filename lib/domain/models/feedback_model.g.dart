// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackModel _$$_FeedbackModelFromJson(Map<String, dynamic> json) =>
    _$_FeedbackModel(
      id: json['id'] as String? ?? '',
      authorID: json['authorID'] as String? ?? '',
      rate: (json['rate'] as num).toDouble(),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$_FeedbackModelToJson(_$_FeedbackModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorID': instance.authorID,
      'rate': instance.rate,
      'value': instance.value,
    };
