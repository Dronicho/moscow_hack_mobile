import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_description.freezed.dart';

@freezed
class FilterDescription with _$FilterDescription {
  const FilterDescription._();

  const factory FilterDescription.switchSlider(
      {required String displayName,
      required final String name,
      @Default(['1', '2']) List<String> items,
      @Default('1') Object value}) = _SwitchSlider;
  const factory FilterDescription.slider(
      {required String displayName,
      required final String name,
      @Default(30) int max,
      @Default(10) int min,
      @Default(RangeValues(15, 25)) Object value}) = _Slider;
  const factory FilterDescription.multiSelect({
    required String displayName,
    required final String name,
    @Default(['1']) List<String> items,
    @Default(<String>[]) Object value,
  }) = _MultiSelect;
  const factory FilterDescription.select({
    required String displayName,
    required final String name,
    @Default(['1']) List<String> items,
    @Default('1') Object value,
  }) = _Select;
  const factory FilterDescription.date(
      {required String displayName, required final String name, @Default('') Object value}) = _Date;

  bool get isEmply => map(
      switchSlider: (d) => d.value == '1',
      slider: (d) => d.value == const RangeValues(15, 25),
      multiSelect: (d) => (d.value as List<String>).isEmpty,
      select: (d) => d.value == '1',
      date: (d) => (d.value as DateTime).isAtSameMomentAs(DateTime.now()));
}
