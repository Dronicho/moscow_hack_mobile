import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/modules/my_projects/cubit/nko_projects_cubit.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/utils/context_extensions.dart';

class HomeNkoPage extends StatelessWidget {
  const HomeNkoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NkoProjectsCubit>(
      create: (context) => get(),
      child: AutoTabsScaffold(
          resizeToAvoidBottomInset: true,
          routes: const [EmptyMyProjectRoute(), RequestsScreenRoute(), ProfileScreenRoute()],
          bottomNavigationBuilder: (_, tabsRouter) {
            return Theme(
              data: context.theme.copyWith(splashFactory: NoSplash.splashFactory),
              child: NavigationBar(
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: tabsRouter.setActiveIndex,
                destinations: const [
                  NavigationDestination(label: 'МОИ ПРОЕКТЫ', icon: Icon(Icons.loyalty)),
                  NavigationDestination(label: 'ЗАЯВКИ', icon: Icon(Icons.person_search)),
                  NavigationDestination(label: 'ОРГАНИЗАЦИЯ', icon: Icon(Icons.favorite)),
                ],
              ),
            );
          }),
    );
  }
}
