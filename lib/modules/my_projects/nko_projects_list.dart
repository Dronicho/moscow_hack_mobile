import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/modules/my_projects/cubit/nko_projects_cubit.dart';
import 'package:moscow_hack/modules/projects/project_card.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';

class NkoProjectsList extends StatelessWidget {
  const NkoProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NkoProjectsCubit, NkoProjectsState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const LoadingWidget(),
            loaded: (data) => ListView.builder(
                shrinkWrap: true,
                itemCount: data.projects.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                      child: ProjectCard(
                        id: data.projects[index].id,
                      ),
                    )),
            error: (_) => AppErrorWidget(
                  onPressed: () {
                    context.read<NkoProjectsCubit>().load();
                  },
                ));
      },
    );
  }
}
