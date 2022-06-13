import 'package:flutter/material.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

class WidgetWithTitle extends StatelessWidget {
  final String title;
  final Widget child;

  const WidgetWithTitle({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(title, style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)), child],
    );
  }
}
