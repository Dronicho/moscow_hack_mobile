import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_payload_dto.freezed.dart';
part 'login_payload_dto.g.dart';

@freezed
class LoginPayloadDto with _$LoginPayloadDto {
  const factory LoginPayloadDto({
    String? password,
    String? email,
    String? name,
    int? age,
    String? city,
    String? description,

    // ignore: non_constant_identifier_names
    String? INN,
  }) = _LoginPayloadDto;

  factory LoginPayloadDto.fromJson(Map<String, dynamic> json) => _$LoginPayloadDtoFromJson(json);
}
