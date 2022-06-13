import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:moscow_hack/theme/colors.dart';

class AppImage extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final bool rounded;
  final bool shadowed;
  const AppImage(
      {super.key, this.url, this.width = 128, this.height = 128, this.rounded = true, this.shadowed = false});

  @override
  Widget build(BuildContext context) {
    if (url == null || !url!.contains('http')) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(rounded ? 8.0 : 0.0),
          color: AppColors.grey,
        ),
        width: width,
        height: height,
      );
    }
    Widget child = ClipRRect(
      borderRadius: BorderRadius.circular(rounded ? 8.0 : 0.0),
      child: CachedNetworkImage(
        imageUrl: url ?? '',
        fit: BoxFit.cover,
        width: width,
        height: height,
        placeholder: (context, url) => Container(
          color: AppColors.grey,
          width: width,
          height: height,
        ),
      ),
    );
    if (shadowed) {
      child = Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
        children: [
          child,
          Positioned.fill(
              child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [Colors.black54, Colors.transparent, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
          ))
        ],
      );
    }
    return child;
  }
}
