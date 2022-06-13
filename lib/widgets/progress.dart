import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';

class LinearProgress extends StatelessWidget {
  final double value;

  const LinearProgress({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        alignment: Alignment.centerLeft,
        children: [
          _buildContainer(AppColors.purple, constraints.maxWidth),
          _buildContainer(AppColors.green, constraints.maxWidth * value)
        ],
      ),
    );
  }

  Widget _buildContainer(Color color, double width) => Container(
        height: 6.0,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(8.0)),
        width: width,
      );
}
