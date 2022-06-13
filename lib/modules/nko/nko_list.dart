import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/modules/nko/author_card.dart';
import 'package:moscow_hack/modules/nko/nkos_cubit/nkos_cubit.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';

class NkoList extends StatelessWidget {
  const NkoList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NkosCubit, NkosState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const LoadingWidget(),
            loaded: (data) => ListView.builder(
                itemCount: data.projects.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                      child: AuthorCard(
                        id: data.projects[index].id,
                      ),
                    )),
            error: (_) => AppErrorWidget(
                  onPressed: () {
                    context.read<NkosCubit>().load();
                  },
                ));
      },
    );
  }
}
