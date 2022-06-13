import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

class AppChip extends StatelessWidget {
  final _ChipVariant _variant;
  final String label;

  const AppChip.primary({super.key, required this.label}) : _variant = _ChipVariant.primary;
  const AppChip.danger({super.key, required this.label}) : _variant = _ChipVariant.danger;
  const AppChip.neutral({super.key, required this.label}) : _variant = _ChipVariant.neutral;
  const AppChip.secondary({super.key, required this.label}) : _variant = _ChipVariant.secondary;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor;
    Color borderColor;
    Color textColor;

    switch (_variant) {
      case _ChipVariant.primary:
        backgroundColor = context.theme.primaryColor;
        borderColor = context.theme.primaryColor;
        textColor = AppColors.white;
        break;
      case _ChipVariant.danger:
        backgroundColor = AppColors.red;
        borderColor = AppColors.red;
        textColor = AppColors.white;
        break;
      case _ChipVariant.neutral:
        backgroundColor = AppColors.background;
        borderColor = AppColors.black;
        textColor = AppColors.black;
        break;
      case _ChipVariant.secondary:
        backgroundColor = AppColors.green;
        borderColor = AppColors.green;
        textColor = AppColors.black;
    }
    return Chip(
      label: Text(label, style: TextStyle(color: textColor)),
      backgroundColor: backgroundColor,
      side: BorderSide(width: 1.0, color: borderColor),
    );
  }
}

enum _ChipVariant { primary, danger, neutral, secondary }
