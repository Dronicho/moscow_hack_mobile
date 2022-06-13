// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterModel {
  int? get ageStart => throw _privateConstructorUsedError;
  int? get ageEnd => throw _privateConstructorUsedError;
  String? get participation => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;
  String? get authorID => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterModelCopyWith<FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterModelCopyWith<$Res> {
  factory $FilterModelCopyWith(
          FilterModel value, $Res Function(FilterModel) then) =
      _$FilterModelCopyWithImpl<$Res>;
  $Res call(
      {int? ageStart,
      int? ageEnd,
      String? participation,
      List<String>? tags,
      List<String>? roles,
      String? authorID});
}

/// @nodoc
class _$FilterModelCopyWithImpl<$Res> implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._value, this._then);

  final FilterModel _value;
  // ignore: unused_field
  final $Res Function(FilterModel) _then;

  @override
  $Res call({
    Object? ageStart = freezed,
    Object? ageEnd = freezed,
    Object? participation = freezed,
    Object? tags = freezed,
    Object? roles = freezed,
    Object? authorID = freezed,
  }) {
    return _then(_value.copyWith(
      ageStart: ageStart == freezed
          ? _value.ageStart
          : ageStart // ignore: cast_nullable_to_non_nullable
              as int?,
      ageEnd: ageEnd == freezed
          ? _value.ageEnd
          : ageEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      participation: participation == freezed
          ? _value.participation
          : participation // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorID: authorID == freezed
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterModelCopyWith<$Res>
    implements $FilterModelCopyWith<$Res> {
  factory _$$_FilterModelCopyWith(
          _$_FilterModel value, $Res Function(_$_FilterModel) then) =
      __$$_FilterModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? ageStart,
      int? ageEnd,
      String? participation,
      List<String>? tags,
      List<String>? roles,
      String? authorID});
}

/// @nodoc
class __$$_FilterModelCopyWithImpl<$Res> extends _$FilterModelCopyWithImpl<$Res>
    implements _$$_FilterModelCopyWith<$Res> {
  __$$_FilterModelCopyWithImpl(
      _$_FilterModel _value, $Res Function(_$_FilterModel) _then)
      : super(_value, (v) => _then(v as _$_FilterModel));

  @override
  _$_FilterModel get _value => super._value as _$_FilterModel;

  @override
  $Res call({
    Object? ageStart = freezed,
    Object? ageEnd = freezed,
    Object? participation = freezed,
    Object? tags = freezed,
    Object? roles = freezed,
    Object? authorID = freezed,
  }) {
    return _then(_$_FilterModel(
      ageStart: ageStart == freezed
          ? _value.ageStart
          : ageStart // ignore: cast_nullable_to_non_nullable
              as int?,
      ageEnd: ageEnd == freezed
          ? _value.ageEnd
          : ageEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      participation: participation == freezed
          ? _value.participation
          : participation // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      roles: roles == freezed
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorID: authorID == freezed
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FilterModel implements _FilterModel {
  const _$_FilterModel(
      {this.ageStart,
      this.ageEnd,
      this.participation,
      final List<String>? tags,
      final List<String>? roles,
      this.authorID})
      : _tags = tags,
        _roles = roles;

  @override
  final int? ageStart;
  @override
  final int? ageEnd;
  @override
  final String? participation;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? authorID;

  @override
  String toString() {
    return 'FilterModel(ageStart: $ageStart, ageEnd: $ageEnd, participation: $participation, tags: $tags, roles: $roles, authorID: $authorID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterModel &&
            const DeepCollectionEquality().equals(other.ageStart, ageStart) &&
            const DeepCollectionEquality().equals(other.ageEnd, ageEnd) &&
            const DeepCollectionEquality()
                .equals(other.participation, participation) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality().equals(other.authorID, authorID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ageStart),
      const DeepCollectionEquality().hash(ageEnd),
      const DeepCollectionEquality().hash(participation),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_roles),
      const DeepCollectionEquality().hash(authorID));

  @JsonKey(ignore: true)
  @override
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      __$$_FilterModelCopyWithImpl<_$_FilterModel>(this, _$identity);
}

abstract class _FilterModel implements FilterModel {
  const factory _FilterModel(
      {final int? ageStart,
      final int? ageEnd,
      final String? participation,
      final List<String>? tags,
      final List<String>? roles,
      final String? authorID}) = _$_FilterModel;

  @override
  int? get ageStart => throw _privateConstructorUsedError;
  @override
  int? get ageEnd => throw _privateConstructorUsedError;
  @override
  String? get participation => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  List<String>? get roles => throw _privateConstructorUsedError;
  @override
  String? get authorID => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FilterModelCopyWith<_$_FilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
