import 'package:flutter/material.dart';
import 'package:moscow_hack/widgets/app_chip.dart';

class TagsList extends StatelessWidget {
  final TagsListVariant _variant;
  final List<String> values;

  const TagsList.primary({super.key, required this.values}) : _variant = TagsListVariant.primary;
  const TagsList.secondary({super.key, required this.values}) : _variant = TagsListVariant.secondary;
  const TagsList.neutral({super.key, required this.values}) : _variant = TagsListVariant.neutral;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: values.map(_buildItem).toList(),
    );
  }

  Widget _buildItem(String value) {
    switch (_variant) {
      case TagsListVariant.primary:
        return AppChip.primary(label: value);
      case TagsListVariant.secondary:
        return AppChip.secondary(label: value);
      case TagsListVariant.neutral:
        return AppChip.neutral(label: value);
    }
  }
}

enum TagsListVariant { primary, secondary, neutral }
