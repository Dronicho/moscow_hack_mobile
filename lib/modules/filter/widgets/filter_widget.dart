import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/services/modal_service.dart';
import 'package:moscow_hack/modules/filter/cubit/filter_cubit.dart';
import 'package:moscow_hack/modules/filter/widgets/filter_modal.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:shimmer/shimmer.dart';

class FilterWidget<T extends FilterCubit> extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, FilterState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => _buildShimmer(context),
            loaded: (s) {
              final filters = s.filters;
              return SizedBox(
                height: 32,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: filters
                      .map((e) => GestureDetector(
                            onTap: () => _openFilter(context, e.name),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                              child: Chip(
                                label: Text(e.displayName,
                                    style: TextStyle(
                                      color: e.isEmply ? AppColors.black : AppColors.white,
                                    )),
                                backgroundColor: e.isEmply ? AppColors.white : AppColors.purple,
                                labelStyle: const TextStyle(color: AppColors.black),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              );
            });
      },
    );
  }

  Shimmer _buildShimmer(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.baseShimmer,
      highlightColor: AppColors.highlightShimmer,
      child: SizedBox(
        height: 32,
        child: Row(
            children: List.generate(
                4,
                (index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Chip(
                        label: Text('label'),
                        labelStyle: TextStyle(
                          color: AppColors.black,
                        ),
                      ),
                    ))),
      ),
    );
  }

  void _openFilter(BuildContext context, String name) {
    ModalService.showBottomSheet(
        child: BlocProvider.value(
      value: context.read<T>(),
      child: FilterModal<T>(
        name: name,
      ),
    ));
  }
}
