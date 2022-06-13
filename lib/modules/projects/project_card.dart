import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/modules/projects/project/cubit/project_cubit.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/widgets/app_chip.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/image.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';

class ProjectCard extends StatelessWidget {
  final String id;

  const ProjectCard({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectCubit>(
      create: (context) => get(param1: id),
      child: Builder(builder: (context) {
        return BlocBuilder<ProjectCubit, ProjectState>(
          builder: (context, state) => state.map(
              initial: (_) => const SizedBox(),
              loading: (_) => const LoadingWidget(),
              loaded: (s) {
                final data = s.project;
                return Card(
                  child: InkWell(
                    onTap: () {
                      context.pushRoute(ProjectScreenRoute(id: id));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppImage(url: data.photoURL),
                              const SizedBox(width: 8.0),
                              Flexible(
                                flex: 3,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(data.name, style: context.textTheme.bodyLarge),
                                    AppChip.neutral(label: data.location),
                                    AppChip.neutral(label: AppLayout.dateTimeFormat.format(data.timeStart)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(data.description, style: context.textTheme.bodyMedium),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              error: (context) => const AppErrorWidget()),
        );
      }),
    );
  }
}
