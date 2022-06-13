import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:moscow_hack/widgets/primary_button.dart';

class AppErrorWidget extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppErrorWidget({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/error.json', width: 100, height: 100),
        if (onPressed != null)
          PrimaryButton.error(
            onPressed: onPressed,
            child: const Text('Попрбовать еще раз'),
          )
      ],
    );
  }
}
