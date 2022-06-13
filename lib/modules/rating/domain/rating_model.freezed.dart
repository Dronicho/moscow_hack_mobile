// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) {
  return _RatingModel.fromJson(json);
}

/// @nodoc
mixin _$RatingModel {
  int get place => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  bool get isClient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingModelCopyWith<RatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingModelCopyWith<$Res> {
  factory $RatingModelCopyWith(
          RatingModel value, $Res Function(RatingModel) then) =
      _$RatingModelCopyWithImpl<$Res>;
  $Res call(
      {int place, String name, String userID, double rating, bool isClient});
}

/// @nodoc
class _$RatingModelCopyWithImpl<$Res> implements $RatingModelCopyWith<$Res> {
  _$RatingModelCopyWithImpl(this._value, this._then);

  final RatingModel _value;
  // ignore: unused_field
  final $Res Function(RatingModel) _then;

  @override
  $Res call({
    Object? place = freezed,
    Object? name = freezed,
    Object? userID = freezed,
    Object? rating = freezed,
    Object? isClient = freezed,
  }) {
    return _then(_value.copyWith(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isClient: isClient == freezed
          ? _value.isClient
          : isClient // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RatingModelCopyWith<$Res>
    implements $RatingModelCopyWith<$Res> {
  factory _$$_RatingModelCopyWith(
          _$_RatingModel value, $Res Function(_$_RatingModel) then) =
      __$$_RatingModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int place, String name, String userID, double rating, bool isClient});
}

/// @nodoc
class __$$_RatingModelCopyWithImpl<$Res> extends _$RatingModelCopyWithImpl<$Res>
    implements _$$_RatingModelCopyWith<$Res> {
  __$$_RatingModelCopyWithImpl(
      _$_RatingModel _value, $Res Function(_$_RatingModel) _then)
      : super(_value, (v) => _then(v as _$_RatingModel));

  @override
  _$_RatingModel get _value => super._value as _$_RatingModel;

  @override
  $Res call({
    Object? place = freezed,
    Object? name = freezed,
    Object? userID = freezed,
    Object? rating = freezed,
    Object? isClient = freezed,
  }) {
    return _then(_$_RatingModel(
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      userID: userID == freezed
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      isClient: isClient == freezed
          ? _value.isClient
          : isClient // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingModel implements _RatingModel {
  const _$_RatingModel(
      {this.place = 1,
      this.name = '',
      this.userID = '',
      this.rating = 2.5,
      this.isClient = false});

  factory _$_RatingModel.fromJson(Map<String, dynamic> json) =>
      _$$_RatingModelFromJson(json);

  @override
  @JsonKey()
  final int place;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String userID;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey()
  final bool isClient;

  @override
  String toString() {
    return 'RatingModel(place: $place, name: $name, userID: $userID, rating: $rating, isClient: $isClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingModel &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.userID, userID) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.isClient, isClient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(place),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(userID),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(isClient));

  @JsonKey(ignore: true)
  @override
  _$$_RatingModelCopyWith<_$_RatingModel> get copyWith =>
      __$$_RatingModelCopyWithImpl<_$_RatingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingModelToJson(this);
  }
}

abstract class _RatingModel implements RatingModel {
  const factory _RatingModel(
      {final int place,
      final String name,
      final String userID,
      final double rating,
      final bool isClient}) = _$_RatingModel;

  factory _RatingModel.fromJson(Map<String, dynamic> json) =
      _$_RatingModel.fromJson;

  @override
  int get place => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get userID => throw _privateConstructorUsedError;
  @override
  double get rating => throw _privateConstructorUsedError;
  @override
  bool get isClient => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RatingModelCopyWith<_$_RatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
