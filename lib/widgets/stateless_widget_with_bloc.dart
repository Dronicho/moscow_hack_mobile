import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';

abstract class StatelessWidgetWithBloc<T extends BlocBase> extends StatelessWidget implements AutoRouteWrapper {
  const StatelessWidgetWithBloc({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<T>(
      create: createCubit,
      child: this,
    );
  }

  T createCubit(BuildContext context) => get();
}

abstract class StatelessWidgetWithBlocs extends StatelessWidget implements AutoRouteWrapper {
  const StatelessWidgetWithBlocs({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: getProviders(),
      child: this,
    );
  }

  List<BlocProvider> getProviders();
}
