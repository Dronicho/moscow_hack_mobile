import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

abstract class AppLayout {
  static const defaultDuration = Duration(milliseconds: 200);
  static const defaultRadius = 8.0;
  static const defaultGap = 8.0;
  static defaultPadding([double multiply = 1]) => EdgeInsets.all(defaultGap * multiply);
  static final defaultBorderRadius = BorderRadius.circular(defaultRadius);
  static final smallBorderRadius = BorderRadius.circular(defaultRadius / 2);
  static final largeBorderRadius = BorderRadius.circular(defaultRadius * 2);

  static final dateTimeFormat = DateFormat('dd.MM.yyyy');
}
