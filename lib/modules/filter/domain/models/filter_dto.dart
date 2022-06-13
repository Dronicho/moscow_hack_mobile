import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_dto.freezed.dart';
part 'filter_dto.g.dart';

@freezed
class FilterDto with _$FilterDto {
  const factory FilterDto({
    @Default(<String>[]) List<String> roles,
    @Default(<String>[]) List<String> tags,
    @Default(<String>[]) List<String> skills,
  }) = _FilterDto;

factory FilterDto.fromJson(Map<String, dynamic> json) => _$FilterDtoFromJson(json);
}