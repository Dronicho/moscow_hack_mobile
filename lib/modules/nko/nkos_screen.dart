import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/services/modal_service.dart';
import 'package:moscow_hack/modules/filter/cubit/filter_cubit.dart';
import 'package:moscow_hack/modules/filter/domain/models/filter_payload.dart';
import 'package:moscow_hack/modules/filter/widgets/filter_modal.dart';
import 'package:moscow_hack/modules/nko/nko_list.dart';
import 'package:moscow_hack/modules/nko/nkos_cubit/nkos_cubit.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:moscow_hack/widgets/search_bar.dart';
import 'package:moscow_hack/widgets/stateless_widget_with_bloc.dart';

class NkosScreen extends StatelessWidgetWithBlocs {
  const NkosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        physics: const PageScrollPhysics(),
        headerSliverBuilder: (_, __) => [
          SliverPersistentHeader(
            pinned: true,
            delegate: MainAppBar(
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ОРГАНИЗАЦИИ', style: context.textTheme.titleLarge?.copyWith(color: AppColors.black)),
                    IconButton(
                        onPressed: () {
                          ModalService.showBottomSheet(
                              child: DraggableScrollableSheet(
                                  expand: false,
                                  snap: true,
                                  snapSizes: const [0.6],
                                  builder: (_, scrollController) => BlocProvider.value(
                                        value: context.read<NkoFilterCubit>(),
                                        child: MediaQuery(
                                          data: MediaQuery.of(context),
                                          child: BlocBuilder<NkoFilterCubit, FilterState>(
                                            builder: (context, state) {
                                              return state.map(
                                                  initial: (_) => const SizedBox(),
                                                  loading: (_) => const LoadingWidget(),
                                                  loaded: (s) {
                                                    return ListView(
                                                      controller: scrollController,
                                                      children: [
                                                        ...s.filters.map((e) {
                                                          return Padding(
                                                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                            child: Column(
                                                              children: [
                                                                Text(e.displayName,
                                                                    style: context.textTheme.titleMedium
                                                                        ?.copyWith(fontWeight: FontWeight.bold)),
                                                                const SizedBox(height: 4.0),
                                                                FilterCard<NkoFilterCubit>(description: e),
                                                              ],
                                                            ),
                                                          );
                                                        }).toList(),
                                                        PrimaryButton(
                                                            onPressed: context.pop, child: const Text('Применить'))
                                                      ],
                                                    );
                                                  });
                                            },
                                          ),
                                        ),
                                      )));
                        },
                        icon: const Icon(Icons.filter_list))
                  ],
                ),
              ),
              toolbarHeight: kToolbarHeight * 2,
              topPadding: context.mediaQueryPadding.top,
              bottom: SearchBar<NkoFilterCubit>(
                delegate: NkoSearchDelegate(),
              ),
            ),
            // toolbarHeight: kToolbarHeight + 100,
            // centerTitle: false,
            // title: const Text('ПРОЕКТЫ'),
            // actions: [],
          ),
        ],
        body: MediaQuery.removePadding(context: context, removeTop: true, child: const NkoList()),
      ),
    );
  }

  @override
  List<BlocProvider<StateStreamableSource<Object?>>> getProviders() {
    return [
      BlocProvider<NkoFilterCubit>(create: (context) => get()),
      BlocProvider<NkosCubit>(create: (context) => get()),
    ];
  }
}
