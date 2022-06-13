import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

@freezed
class FilterModel with _$FilterModel {
  const factory FilterModel({
    int? ageStart,
    int? ageEnd,
    String? participation,
    List<String>? tags,
    List<String>? roles,
    String? authorID
  }) = _FilterModel;

}