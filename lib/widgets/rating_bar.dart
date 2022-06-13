import 'package:flutter/material.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/widgets/progress.dart';

class RatingBar extends StatelessWidget {
  // provide rating in range [1..5], it will automatically normalize
  final double value;
  final double? fontSize;

  const RatingBar({super.key, required this.value, this.fontSize});

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold, fontSize: fontSize);
    return Column(
      children: [
        LinearProgress(value: value / 5),
        const SizedBox(height: 4.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('РЕЙТИНГ', style: style),
            Text('$value', style: style),
          ],
        )
      ],
    );
  }
}
