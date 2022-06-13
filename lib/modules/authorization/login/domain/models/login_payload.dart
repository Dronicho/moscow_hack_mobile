import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_payload_dto.dart';

part 'login_payload.freezed.dart';
part 'login_payload.g.dart';
part 'login_payload.mapper.dart';

@freezed
class LoginPayload with _$LoginPayload {
  const factory LoginPayload.volonteer({
    String? password,
    String? email,
    String? name,
    int? age,
    String? city,
    String? description,
  }) = _Volonteer;
  const factory LoginPayload.nko({
    String? password,
    String? email,
    String? city,
    String? description,
    // ignore: non_constant_identifier_names
    String? INN,
  }) = _Nko;
  const factory LoginPayload.business({
    String? password,
    String? email,
    String? city,
    String? description,
  }) = _Business;

  factory LoginPayload.fromJson(Map<String, dynamic> json) => _$LoginPayloadFromJson(json);
}
