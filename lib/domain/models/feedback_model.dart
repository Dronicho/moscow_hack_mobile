import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_model.freezed.dart';
part 'feedback_model.g.dart';

@freezed
class FeedbackModel with _$FeedbackModel {
  const factory FeedbackModel({
    @Default('') @JsonKey(name: 'id') String id,
    @Default('') String authorID,
    required double rate,
    required String value
  }) = _FeedbackModel;

factory FeedbackModel.fromJson(Map<String, dynamic> json) => _$FeedbackModelFromJson(json);
}