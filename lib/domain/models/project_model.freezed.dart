// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

/// @nodoc
mixin _$ProjectModel {
  @JsonKey(name: 'ID')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get authorID => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  int get ageStart => throw _privateConstructorUsedError;
  int get ageEnd => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get website => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;
  DateTime get timeStart => throw _privateConstructorUsedError;
  DateTime get timeEnd => throw _privateConstructorUsedError;
  String get participation => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  List<String> get roles => throw _privateConstructorUsedError;
  List<String> get requirements => throw _privateConstructorUsedError;
  List<String> get services => throw _privateConstructorUsedError;
  List<String> get participants => throw _privateConstructorUsedError;
  String? get photoURL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectModelCopyWith<ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
          ProjectModel value, $Res Function(ProjectModel) then) =
      _$ProjectModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ID') String id,
      String name,
      String authorID,
      String description,
      String? shortDescription,
      int ageStart,
      int ageEnd,
      List<String> tags,
      String website,
      DateTime deadline,
      DateTime timeStart,
      DateTime timeEnd,
      String participation,
      String location,
      List<String> skills,
      List<String> roles,
      List<String> requirements,
      List<String> services,
      List<String> participants,
      String? photoURL});
}

/// @nodoc
class _$ProjectModelCopyWithImpl<$Res> implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  final ProjectModel _value;
  // ignore: unused_field
  final $Res Function(ProjectModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? authorID = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? ageStart = freezed,
    Object? ageEnd = freezed,
    Object? tags = freezed,
    Object? website = freezed,
    Object? deadline = freezed,
    Object? timeStart = freezed,
    Object? timeEnd = freezed,
    Object? participation = freezed,
    Object? location = freezed,
    Object? skills = freezed,
    Object? roles = freezed,
    Object? requirements = freezed,
    Object? services = freezed,
    Object? participants = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authorID: authorID == freezed
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      ageStart: ageStart == freezed
          ? _value.ageStart
          : ageStart // ignore: cast_nullable_to_non_nullable
              as int,
      ageEnd: ageEnd == freezed
          ? _value.ageEnd
          : ageEnd // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: timeEnd == freezed
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participation: participation == freezed
          ? _value.participation
          : participation // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      roles: roles == freezed
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requirements: requirements == freezed
          ? _value.requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      participants: participants == freezed
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProjectModelCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$$_ProjectModelCopyWith(
          _$_ProjectModel value, $Res Function(_$_ProjectModel) then) =
      __$$_ProjectModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ID') String id,
      String name,
      String authorID,
      String description,
      String? shortDescription,
      int ageStart,
      int ageEnd,
      List<String> tags,
      String website,
      DateTime deadline,
      DateTime timeStart,
      DateTime timeEnd,
      String participation,
      String location,
      List<String> skills,
      List<String> roles,
      List<String> requirements,
      List<String> services,
      List<String> participants,
      String? photoURL});
}

/// @nodoc
class __$$_ProjectModelCopyWithImpl<$Res>
    extends _$ProjectModelCopyWithImpl<$Res>
    implements _$$_ProjectModelCopyWith<$Res> {
  __$$_ProjectModelCopyWithImpl(
      _$_ProjectModel _value, $Res Function(_$_ProjectModel) _then)
      : super(_value, (v) => _then(v as _$_ProjectModel));

  @override
  _$_ProjectModel get _value => super._value as _$_ProjectModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? authorID = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? ageStart = freezed,
    Object? ageEnd = freezed,
    Object? tags = freezed,
    Object? website = freezed,
    Object? deadline = freezed,
    Object? timeStart = freezed,
    Object? timeEnd = freezed,
    Object? participation = freezed,
    Object? location = freezed,
    Object? skills = freezed,
    Object? roles = freezed,
    Object? requirements = freezed,
    Object? services = freezed,
    Object? participants = freezed,
    Object? photoURL = freezed,
  }) {
    return _then(_$_ProjectModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authorID: authorID == freezed
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      ageStart: ageStart == freezed
          ? _value.ageStart
          : ageStart // ignore: cast_nullable_to_non_nullable
              as int,
      ageEnd: ageEnd == freezed
          ? _value.ageEnd
          : ageEnd // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeStart: timeStart == freezed
          ? _value.timeStart
          : timeStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timeEnd: timeEnd == freezed
          ? _value.timeEnd
          : timeEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      participation: participation == freezed
          ? _value.participation
          : participation // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      skills: skills == freezed
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      roles: roles == freezed
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      requirements: requirements == freezed
          ? _value._requirements
          : requirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<String>,
      participants: participants == freezed
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectModel implements _ProjectModel {
  const _$_ProjectModel(
      {@JsonKey(name: 'ID') required this.id,
      required this.name,
      required this.authorID,
      required this.description,
      this.shortDescription,
      required this.ageStart,
      required this.ageEnd,
      final List<String> tags = const <String>[],
      required this.website,
      required this.deadline,
      required this.timeStart,
      required this.timeEnd,
      this.participation = '',
      this.location = '',
      final List<String> skills = const <String>[],
      final List<String> roles = const <String>[],
      final List<String> requirements = const <String>[],
      final List<String> services = const <String>[],
      final List<String> participants = const <String>[],
      this.photoURL})
      : _tags = tags,
        _skills = skills,
        _roles = roles,
        _requirements = requirements,
        _services = services,
        _participants = participants;

  factory _$_ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectModelFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final String id;
  @override
  final String name;
  @override
  final String authorID;
  @override
  final String description;
  @override
  final String? shortDescription;
  @override
  final int ageStart;
  @override
  final int ageEnd;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String website;
  @override
  final DateTime deadline;
  @override
  final DateTime timeStart;
  @override
  final DateTime timeEnd;
  @override
  @JsonKey()
  final String participation;
  @override
  @JsonKey()
  final String location;
  final List<String> _skills;
  @override
  @JsonKey()
  List<String> get skills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<String> _roles;
  @override
  @JsonKey()
  List<String> get roles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  final List<String> _requirements;
  @override
  @JsonKey()
  List<String> get requirements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_requirements);
  }

  final List<String> _services;
  @override
  @JsonKey()
  List<String> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<String> _participants;
  @override
  @JsonKey()
  List<String> get participants {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final String? photoURL;

  @override
  String toString() {
    return 'ProjectModel(id: $id, name: $name, authorID: $authorID, description: $description, shortDescription: $shortDescription, ageStart: $ageStart, ageEnd: $ageEnd, tags: $tags, website: $website, deadline: $deadline, timeStart: $timeStart, timeEnd: $timeEnd, participation: $participation, location: $location, skills: $skills, roles: $roles, requirements: $requirements, services: $services, participants: $participants, photoURL: $photoURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.authorID, authorID) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.shortDescription, shortDescription) &&
            const DeepCollectionEquality().equals(other.ageStart, ageStart) &&
            const DeepCollectionEquality().equals(other.ageEnd, ageEnd) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.timeStart, timeStart) &&
            const DeepCollectionEquality().equals(other.timeEnd, timeEnd) &&
            const DeepCollectionEquality()
                .equals(other.participation, participation) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            const DeepCollectionEquality()
                .equals(other._requirements, _requirements) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(authorID),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(shortDescription),
        const DeepCollectionEquality().hash(ageStart),
        const DeepCollectionEquality().hash(ageEnd),
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(website),
        const DeepCollectionEquality().hash(deadline),
        const DeepCollectionEquality().hash(timeStart),
        const DeepCollectionEquality().hash(timeEnd),
        const DeepCollectionEquality().hash(participation),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(_skills),
        const DeepCollectionEquality().hash(_roles),
        const DeepCollectionEquality().hash(_requirements),
        const DeepCollectionEquality().hash(_services),
        const DeepCollectionEquality().hash(_participants),
        const DeepCollectionEquality().hash(photoURL)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ProjectModelCopyWith<_$_ProjectModel> get copyWith =>
      __$$_ProjectModelCopyWithImpl<_$_ProjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectModelToJson(this);
  }
}

abstract class _ProjectModel implements ProjectModel {
  const factory _ProjectModel(
      {@JsonKey(name: 'ID') required final String id,
      required final String name,
      required final String authorID,
      required final String description,
      final String? shortDescription,
      required final int ageStart,
      required final int ageEnd,
      final List<String> tags,
      required final String website,
      required final DateTime deadline,
      required final DateTime timeStart,
      required final DateTime timeEnd,
      final String participation,
      final String location,
      final List<String> skills,
      final List<String> roles,
      final List<String> requirements,
      final List<String> services,
      final List<String> participants,
      final String? photoURL}) = _$_ProjectModel;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectModel.fromJson;

  @override
  @JsonKey(name: 'ID')
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get authorID => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String? get shortDescription => throw _privateConstructorUsedError;
  @override
  int get ageStart => throw _privateConstructorUsedError;
  @override
  int get ageEnd => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  String get website => throw _privateConstructorUsedError;
  @override
  DateTime get deadline => throw _privateConstructorUsedError;
  @override
  DateTime get timeStart => throw _privateConstructorUsedError;
  @override
  DateTime get timeEnd => throw _privateConstructorUsedError;
  @override
  String get participation => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  List<String> get skills => throw _privateConstructorUsedError;
  @override
  List<String> get roles => throw _privateConstructorUsedError;
  @override
  List<String> get requirements => throw _privateConstructorUsedError;
  @override
  List<String> get services => throw _privateConstructorUsedError;
  @override
  List<String> get participants => throw _privateConstructorUsedError;
  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectModelCopyWith<_$_ProjectModel> get copyWith =>
      throw _privateConstructorUsedError;
}
