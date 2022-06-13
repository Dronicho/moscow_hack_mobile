// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_projects_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProjectsResponse _$UserProjectsResponseFromJson(Map<String, dynamic> json) {
  return _UserProjectsResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProjectsResponse {
  List<ProjectModel> get createdProjects => throw _privateConstructorUsedError;
  List<ProjectModel> get memberProjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProjectsResponseCopyWith<UserProjectsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProjectsResponseCopyWith<$Res> {
  factory $UserProjectsResponseCopyWith(UserProjectsResponse value,
          $Res Function(UserProjectsResponse) then) =
      _$UserProjectsResponseCopyWithImpl<$Res>;
  $Res call(
      {List<ProjectModel> createdProjects, List<ProjectModel> memberProjects});
}

/// @nodoc
class _$UserProjectsResponseCopyWithImpl<$Res>
    implements $UserProjectsResponseCopyWith<$Res> {
  _$UserProjectsResponseCopyWithImpl(this._value, this._then);

  final UserProjectsResponse _value;
  // ignore: unused_field
  final $Res Function(UserProjectsResponse) _then;

  @override
  $Res call({
    Object? createdProjects = freezed,
    Object? memberProjects = freezed,
  }) {
    return _then(_value.copyWith(
      createdProjects: createdProjects == freezed
          ? _value.createdProjects
          : createdProjects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      memberProjects: memberProjects == freezed
          ? _value.memberProjects
          : memberProjects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProjectsResponseCopyWith<$Res>
    implements $UserProjectsResponseCopyWith<$Res> {
  factory _$$_UserProjectsResponseCopyWith(_$_UserProjectsResponse value,
          $Res Function(_$_UserProjectsResponse) then) =
      __$$_UserProjectsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProjectModel> createdProjects, List<ProjectModel> memberProjects});
}

/// @nodoc
class __$$_UserProjectsResponseCopyWithImpl<$Res>
    extends _$UserProjectsResponseCopyWithImpl<$Res>
    implements _$$_UserProjectsResponseCopyWith<$Res> {
  __$$_UserProjectsResponseCopyWithImpl(_$_UserProjectsResponse _value,
      $Res Function(_$_UserProjectsResponse) _then)
      : super(_value, (v) => _then(v as _$_UserProjectsResponse));

  @override
  _$_UserProjectsResponse get _value => super._value as _$_UserProjectsResponse;

  @override
  $Res call({
    Object? createdProjects = freezed,
    Object? memberProjects = freezed,
  }) {
    return _then(_$_UserProjectsResponse(
      createdProjects: createdProjects == freezed
          ? _value._createdProjects
          : createdProjects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
      memberProjects: memberProjects == freezed
          ? _value._memberProjects
          : memberProjects // ignore: cast_nullable_to_non_nullable
              as List<ProjectModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProjectsResponse implements _UserProjectsResponse {
  const _$_UserProjectsResponse(
      {required final List<ProjectModel> createdProjects,
      required final List<ProjectModel> memberProjects})
      : _createdProjects = createdProjects,
        _memberProjects = memberProjects;

  factory _$_UserProjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserProjectsResponseFromJson(json);

  final List<ProjectModel> _createdProjects;
  @override
  List<ProjectModel> get createdProjects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createdProjects);
  }

  final List<ProjectModel> _memberProjects;
  @override
  List<ProjectModel> get memberProjects {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_memberProjects);
  }

  @override
  String toString() {
    return 'UserProjectsResponse(createdProjects: $createdProjects, memberProjects: $memberProjects)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProjectsResponse &&
            const DeepCollectionEquality()
                .equals(other._createdProjects, _createdProjects) &&
            const DeepCollectionEquality()
                .equals(other._memberProjects, _memberProjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_createdProjects),
      const DeepCollectionEquality().hash(_memberProjects));

  @JsonKey(ignore: true)
  @override
  _$$_UserProjectsResponseCopyWith<_$_UserProjectsResponse> get copyWith =>
      __$$_UserProjectsResponseCopyWithImpl<_$_UserProjectsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProjectsResponseToJson(this);
  }
}

abstract class _UserProjectsResponse implements UserProjectsResponse {
  const factory _UserProjectsResponse(
          {required final List<ProjectModel> createdProjects,
          required final List<ProjectModel> memberProjects}) =
      _$_UserProjectsResponse;

  factory _UserProjectsResponse.fromJson(Map<String, dynamic> json) =
      _$_UserProjectsResponse.fromJson;

  @override
  List<ProjectModel> get createdProjects => throw _privateConstructorUsedError;
  @override
  List<ProjectModel> get memberProjects => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserProjectsResponseCopyWith<_$_UserProjectsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
