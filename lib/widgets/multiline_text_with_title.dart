import 'package:flutter/material.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

class MultilineTextWithTitle extends StatelessWidget {
  final String title;
  final List<String> spans;
  const MultilineTextWithTitle({super.key, required this.title, required this.spans});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        ...spans.map(Text.new)
      ],
    );
  }
}
