// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterDto _$FilterDtoFromJson(Map<String, dynamic> json) {
  return _FilterDto.fromJson(json);
}

/// @nodoc
mixin _$FilterDto {
  List<String> get roles => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterDtoCopyWith<FilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterDtoCopyWith<$Res> {
  factory $FilterDtoCopyWith(FilterDto value, $Res Function(FilterDto) then) =
      _$FilterDtoCopyWithImpl<$Res>;
  $Res call({List<String> roles, List<String> tags, List<String> skills});
}

/// @nodoc
class _$FilterDtoCopyWithImpl<$Res> implements $FilterDtoCopyWith<$Res> {
  _$FilterDtoCopyWithImpl(this._value, this._then);

  final FilterDto _value;
  // ignore: unused_field
  final $Res Function(FilterDto) _then;

  @override
  $Res call({
    Object? roles = freezed,
    Object? tags = freezed,
    Object? skills = freezed,
  }) {
    return _then(_value.copyWith(
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterDtoCopyWith<$Res> implements $FilterDtoCopyWith<$Res> {
  factory _$$_FilterDtoCopyWith(
          _$_FilterDto value, $Res Function(_$_FilterDto) then) =
      __$$_FilterDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<String> roles, List<String> tags, List<String> skills});
}

/// @nodoc
class __$$_FilterDtoCopyWithImpl<$Res> extends _$FilterDtoCopyWithImpl<$Res>
    implements _$$_FilterDtoCopyWith<$Res> {
  __$$_FilterDtoCopyWithImpl(
      _$_FilterDto _value, $Res Function(_$_FilterDto) _then)
      : super(_value, (v) => _then(v as _$_FilterDto));

  @override
  _$_FilterDto get _value => super._value as _$_FilterDto;

  @override
  $Res call({
    Object? roles = freezed,
    Object? tags = freezed,
    Object? skills = freezed,
  }) {
    return _then(_$_FilterDto(
      roles: roles == freezed
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: skills == freezed
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterDto implements _FilterDto {
  const _$_FilterDto(
      {final List<String> roles = const <String>[],
      final List<String> tags = const <String>[],
      final List<String> skills = const <String>[]})
      : _roles = roles,
        _tags = tags,
        _skills = skills;

  factory _$_FilterDto.fromJson(Map<String, dynamic> json) =>
      _$$_FilterDtoFromJson(json);

  final List<String> _roles;
  @override
  @JsonKey()
  List<String> get roles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _skills;
  @override
  @JsonKey()
  List<String> get skills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  String toString() {
    return 'FilterDto(roles: $roles, tags: $tags, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterDto &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  _$$_FilterDtoCopyWith<_$_FilterDto> get copyWith =>
      __$$_FilterDtoCopyWithImpl<_$_FilterDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterDtoToJson(this);
  }
}

abstract class _FilterDto implements FilterDto {
  const factory _FilterDto(
      {final List<String> roles,
      final List<String> tags,
      final List<String> skills}) = _$_FilterDto;

  factory _FilterDto.fromJson(Map<String, dynamic> json) =
      _$_FilterDto.fromJson;

  @override
  List<String> get roles => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  List<String> get skills => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FilterDtoCopyWith<_$_FilterDto> get copyWith =>
      throw _privateConstructorUsedError;
}
