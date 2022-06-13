import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';

class CustomAppBar extends SliverPersistentHeaderDelegate {
  final String title;
  final double rating;
  final int place;

  CustomAppBar(this.title, this.rating, this.place);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    const maxRight = 190.0;
    const minRight = 28.0;

    var visible = 1.0;

    const maxRadius = 120;
    const minRadius = kToolbarHeight - 10;

    final deltaExtent = maxExtent - 0;
    var t = (1.0 - (shrinkOffset - 0) / deltaExtent).clamp(0.0, 1.0) * 1.0;
    var radius = lerpDouble(maxRadius, minRadius, 1 - t)!;
    if (t < 0.6) {
      visible = 0;
      radius *= 0.8;
      // t /= 2;
    }

    return Container(
      color: AppColors.background,
      child: Stack(
        children: [
          Positioned(
            // top: context.mediaQueryPadding.top,
            bottom: 0,
            left: 16.0,
            child: Text(
              title,
              style: context.textTheme.titleLarge?.copyWith(color: AppColors.black),
            ),
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              right: t > 0.6 ? minRight : lerpDouble(maxRight, maxRight, t)!,
              bottom: t < 0.6 ? 5 : 32,
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 50),
                  decoration: BoxDecoration(color: AppColors.green, borderRadius: AppLayout.largeBorderRadius),
                  height: radius,
                  width: radius,
                  child: Center(
                    child: Text(
                      rating.toStringAsPrecision(2),
                      style: TextStyle(
                          fontSize: lerpDouble(14, 64, t), color: AppColors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )),
          Positioned(
            bottom: 0,
            right: 40,
            child: AnimatedOpacity(
              opacity: visible,
              duration: AppLayout.defaultDuration,
              child: const Text('#2 в Москве'),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 250;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
