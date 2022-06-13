import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        resizeToAvoidBottomInset: true,
        routes: const [EmptyRouterPageRoute(), EmptyRouterScreenRoute(), RatingScreenRoute(), ProfileScreenRoute()],
        bottomNavigationBuilder: (_, tabsRouter) {
          return Theme(
            data: context.theme.copyWith(splashFactory: NoSplash.splashFactory),
            child: NavigationBar(
              selectedIndex: tabsRouter.activeIndex,
              onDestinationSelected: tabsRouter.setActiveIndex,
              destinations: const [
                NavigationDestination(label: 'ПРОЕКТЫ', icon: Icon(Icons.loyalty)),
                NavigationDestination(label: 'ОРГАНИЗАЦИИ', icon: Icon(Icons.favorite)),
                NavigationDestination(label: 'РЕЙТИНГ', icon: Icon(Icons.star_rate)),
                NavigationDestination(label: 'ПРОФИЛЬ', icon: Icon(Icons.person))
              ],
            ),
          );
        });
  }
}
