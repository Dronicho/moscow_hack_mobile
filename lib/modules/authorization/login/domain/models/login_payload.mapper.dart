part of 'login_payload.dart';

extension MergeLogin on LoginPayload {
  LoginPayload merge(LoginPayloadDto dto) {
    return map(
        volonteer: (data) => LoginPayload.volonteer(
              password: dto.password ?? data.password,
              email: dto.email ?? data.email,
              name: dto.name ?? data.name,
              age: dto.age ?? data.age,
              city: dto.city ?? data.city,
              description: dto.description ?? data.description,
            ),
        nko: (data) => LoginPayload.nko(
            password: dto.password ?? data.password,
            email: dto.email ?? data.email,
            city: dto.city ?? data.city,
            description: dto.description ?? data.description,
            INN: dto.INN ?? data.INN),
        business: (data) => LoginPayload.business(
              password: dto.password ?? data.password,
              email: dto.email ?? data.email,
              city: dto.city ?? data.city,
              description: dto.description ?? data.description,
            ));
  }
}
