import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/domain/models/feedback_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'ID') required String id,
    required String name,
    required String email,
    @Default(0) int age,
    @Default(2.5) double rating,
    @Default('') String city,
    String? photoURL,
    @Default('') String description,
    @Default(<String>[]) List<String> registeredProjects,
    @Default(<FeedbackModel>[]) List<FeedbackModel> rates,
    @Default(Contact()) Contact? contact
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    @Default('telegram') String type,
    @Default('andronax') String value,
  }) = _Contact;

factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}
