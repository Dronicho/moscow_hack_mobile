import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';

class RatingCard extends StatelessWidget {
  final int place;
  final String name;
  final double rating;
  final Color indicatorColor;
  final bool selected;

  const RatingCard({
    super.key,
    required this.place,
    required this.name,
    required this.rating,
    required this.indicatorColor,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = context.textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold);
    if (selected) {
      textStyle = textStyle.copyWith(color: AppColors.white);
    }
    return Card(
      color: selected ? AppColors.green : AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('#$place', style: textStyle),
          Text(name, style: textStyle),
          Container(
            decoration: BoxDecoration(
                color: indicatorColor,
                borderRadius: AppLayout.smallBorderRadius,
                border: selected ? Border.all(width: 0.5, color: AppColors.white) : null),
            padding: const EdgeInsets.all(8.0),
            child: Text(
              rating.toStringAsPrecision(2),
              style: textStyle,
            ),
          )
        ]),
      ),
    );
  }
}
