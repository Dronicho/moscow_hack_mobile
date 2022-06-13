import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/services/event_bus.dart';
import 'package:moscow_hack/modules/filter/cubit/filter_cubit.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_payload.dart';
import 'package:moscow_hack/modules/filter/widgets/filter_widget.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';

abstract class FireSearchEventDelegate<T extends FilterPayload> {
  T createPayload(String value);
}

class ProjectSearchDelegate extends FireSearchEventDelegate<ProjectFilters> {
  @override
  ProjectFilters createPayload(String value) {
    return ProjectFilters(null, value);
  }
}

class NkoSearchDelegate extends FireSearchEventDelegate<NkoFilters> {
  @override
  NkoFilters createPayload(String value) {
    return NkoFilters(null, value);
  }
}

class SearchBar<T extends FilterCubit> extends StatelessWidget implements PreferredSizeWidget {
  final EventBus _bus = get();

  final FireSearchEventDelegate delegate;
  final bool buildFilters;

  SearchBar({super.key, required this.delegate, this.buildFilters = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              onChanged: (value) {
                _bus.fire(delegate.createPayload(value));
              },
              decoration: InputDecoration(
                  hintText: 'Поиск по проектам',
                  suffixIcon: GestureDetector(onTap: () {}, child: const Icon(Icons.search))),
            ),
          ),
          if (buildFilters) FilterWidget<T>(),
          const SizedBox(height: AppLayout.defaultGap)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65.0);
}

class MainAppBar extends SliverPersistentHeaderDelegate {
  final Widget title;

  final double topPadding;

  final double toolbarHeight;
  final PreferredSizeWidget? bottom;

  final double _bottomHeight;

  MainAppBar({this.bottom, required this.title, required this.topPadding, required this.toolbarHeight})
      : _bottomHeight = (bottom?.preferredSize.height ?? 0);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    List<Widget> children = [
      Container(
        color: AppColors.background,
      )
    ];

    // 0.0 -> Expanded
    // 1.0 -> Collapsed to toolbar
    final double t =
        (1.0 - (max(minExtent, maxExtent - shrinkOffset) - minExtent) / (maxExtent - minExtent)).clamp(0.0, 1.0);
    print(t);
    const double opacity = 1.0;

    if (opacity > 0.0) {
      TextStyle titleStyle = context.theme.primaryTextTheme.headline6!;
      titleStyle = titleStyle.copyWith(
        color: titleStyle.color!.withOpacity(opacity),
      );
      const EdgeInsetsGeometry padding = EdgeInsetsDirectional.only(
        start: 0.0,
        bottom: 0.0,
      );
      final double scaleValue = Tween<double>(begin: 1.35, end: 1.0).transform(t);
      final Matrix4 scaleTransform = Matrix4.identity()..scale(scaleValue, scaleValue, 1.0);
      const Alignment titleAlignment = Alignment.bottomLeft;
      Widget child = Container(
        color: AppColors.background,
        padding: padding,
        child: Transform(
          alignment: titleAlignment,
          transform: scaleTransform,
          child: Align(
            alignment: titleAlignment,
            child: DefaultTextStyle(
              style: titleStyle,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    width: constraints.maxWidth / scaleValue,
                    alignment: titleAlignment,
                    child: title,
                  );
                },
              ),
            ),
          ),
        ),
      );
      if (bottom != null) {
        child = Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [child, bottom!],
        );
      }
      children.add(child);
    }
    return ClipRect(child: Stack(children: children));
  }

  @override
  double get maxExtent => 250 + _bottomHeight;

  @override
  double get minExtent => kToolbarHeight + topPadding + _bottomHeight + topPadding;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
