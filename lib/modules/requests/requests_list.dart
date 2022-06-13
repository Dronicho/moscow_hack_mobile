import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/modules/my_projects/cubit/nko_projects_cubit.dart';
import 'package:moscow_hack/modules/requests/volonteer_card.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';

class RequestsList extends StatelessWidget {
  const RequestsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NkoProjectsCubit, NkoProjectsState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const LoadingWidget(),
            loaded: (d) {
              if (d.selected == null) {
                return const Center(child: Text('Выберите проект'));
              }
              return ListView.builder(
                itemCount: d.selected!.participants.length,
                itemBuilder: (context, index) => VolonteerCard(
                  id: d.selected!.participants[index],
                  onAccept: () {
                    context.read<NkoProjectsCubit>().acceptUser(d.selected!.participants[index]);
                  },
                ),
              );
            },
            error: (_) => const AppErrorWidget());
      },
    );
  }
}
