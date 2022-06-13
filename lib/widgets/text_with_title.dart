import 'package:flutter/material.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

class TextWithTitle extends StatelessWidget {
  final String title;
  final String text;

  const TextWithTitle({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
        Text(text),
      ],
    );
  }
}
