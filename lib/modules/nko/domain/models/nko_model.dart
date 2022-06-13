import 'package:freezed_annotation/freezed_annotation.dart';

part 'nko_model.freezed.dart';
part 'nko_model.g.dart';

@freezed
class NkoModel with _$NkoModel {
  const factory NkoModel({
    String? photoURL,
    required String name,
    @JsonKey(name: 'ID') required String id,
    @Default('') String description,
    @Default(0) double rating,
    @Default(<String>[]) List<String> tags,
    @Default('') @JsonKey(name: 'INN') String inn,
  }) = _NkoModel;

  factory NkoModel.fromJson(Map<String, dynamic> json) => _$NkoModelFromJson(json);
}
