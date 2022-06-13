// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RatingModel _$$_RatingModelFromJson(Map<String, dynamic> json) =>
    _$_RatingModel(
      place: json['place'] as int? ?? 1,
      name: json['name'] as String? ?? '',
      userID: json['userID'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 2.5,
      isClient: json['isClient'] as bool? ?? false,
    );

Map<String, dynamic> _$$_RatingModelToJson(_$_RatingModel instance) =>
    <String, dynamic>{
      'place': instance.place,
      'name': instance.name,
      'userID': instance.userID,
      'rating': instance.rating,
      'isClient': instance.isClient,
    };
