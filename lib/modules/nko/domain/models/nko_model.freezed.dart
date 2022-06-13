// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nko_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NkoModel _$NkoModelFromJson(Map<String, dynamic> json) {
  return _NkoModel.fromJson(json);
}

/// @nodoc
mixin _$NkoModel {
  String? get photoURL => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'ID')
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'INN')
  String get inn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NkoModelCopyWith<NkoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NkoModelCopyWith<$Res> {
  factory $NkoModelCopyWith(NkoModel value, $Res Function(NkoModel) then) =
      _$NkoModelCopyWithImpl<$Res>;
  $Res call(
      {String? photoURL,
      String name,
      @JsonKey(name: 'ID') String id,
      String description,
      double rating,
      List<String> tags,
      @JsonKey(name: 'INN') String inn});
}

/// @nodoc
class _$NkoModelCopyWithImpl<$Res> implements $NkoModelCopyWith<$Res> {
  _$NkoModelCopyWithImpl(this._value, this._then);

  final NkoModel _value;
  // ignore: unused_field
  final $Res Function(NkoModel) _then;

  @override
  $Res call({
    Object? photoURL = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? tags = freezed,
    Object? inn = freezed,
  }) {
    return _then(_value.copyWith(
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NkoModelCopyWith<$Res> implements $NkoModelCopyWith<$Res> {
  factory _$$_NkoModelCopyWith(
          _$_NkoModel value, $Res Function(_$_NkoModel) then) =
      __$$_NkoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? photoURL,
      String name,
      @JsonKey(name: 'ID') String id,
      String description,
      double rating,
      List<String> tags,
      @JsonKey(name: 'INN') String inn});
}

/// @nodoc
class __$$_NkoModelCopyWithImpl<$Res> extends _$NkoModelCopyWithImpl<$Res>
    implements _$$_NkoModelCopyWith<$Res> {
  __$$_NkoModelCopyWithImpl(
      _$_NkoModel _value, $Res Function(_$_NkoModel) _then)
      : super(_value, (v) => _then(v as _$_NkoModel));

  @override
  _$_NkoModel get _value => super._value as _$_NkoModel;

  @override
  $Res call({
    Object? photoURL = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? description = freezed,
    Object? rating = freezed,
    Object? tags = freezed,
    Object? inn = freezed,
  }) {
    return _then(_$_NkoModel(
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inn: inn == freezed
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NkoModel implements _NkoModel {
  const _$_NkoModel(
      {this.photoURL,
      required this.name,
      @JsonKey(name: 'ID') required this.id,
      this.description = '',
      this.rating = 0,
      final List<String> tags = const <String>[],
      @JsonKey(name: 'INN') this.inn = ''})
      : _tags = tags;

  factory _$_NkoModel.fromJson(Map<String, dynamic> json) =>
      _$$_NkoModelFromJson(json);

  @override
  final String? photoURL;
  @override
  final String name;
  @override
  @JsonKey(name: 'ID')
  final String id;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final double rating;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey(name: 'INN')
  final String inn;

  @override
  String toString() {
    return 'NkoModel(photoURL: $photoURL, name: $name, id: $id, description: $description, rating: $rating, tags: $tags, inn: $inn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NkoModel &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.inn, inn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(photoURL),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(inn));

  @JsonKey(ignore: true)
  @override
  _$$_NkoModelCopyWith<_$_NkoModel> get copyWith =>
      __$$_NkoModelCopyWithImpl<_$_NkoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NkoModelToJson(this);
  }
}

abstract class _NkoModel implements NkoModel {
  const factory _NkoModel(
      {final String? photoURL,
      required final String name,
      @JsonKey(name: 'ID') required final String id,
      final String description,
      final double rating,
      final List<String> tags,
      @JsonKey(name: 'INN') final String inn}) = _$_NkoModel;

  factory _NkoModel.fromJson(Map<String, dynamic> json) = _$_NkoModel.fromJson;

  @override
  String? get photoURL => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ID')
  String get id => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'INN')
  String get inn => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NkoModelCopyWith<_$_NkoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
