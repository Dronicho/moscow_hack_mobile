import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/models/project_model.dart';
import 'package:moscow_hack/modules/my_projects/cubit/nko_projects_cubit.dart';
import 'package:moscow_hack/modules/requests/requests_list.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/search_bar.dart';
import 'package:shimmer/shimmer.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: const PageScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: MainAppBar(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('ЗАЯВКИ', style: context.textTheme.titleLarge?.copyWith(color: AppColors.black)),
                          ],
                        ),
                      ),
                      toolbarHeight: kToolbarHeight,
                      topPadding: context.mediaQueryPadding.top,
                      bottom: const PreferredSize(
                          preferredSize: Size.fromHeight(50),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                            child: ProjectSelect(),
                          ))),
                )
              ],
          body: const RequestsList()),
    );
  }
}

class ProjectSelect extends StatefulWidget {
  const ProjectSelect({Key? key}) : super(key: key);

  @override
  State<ProjectSelect> createState() => _ProjectSelectState();
}

class _ProjectSelectState extends State<ProjectSelect> {
  ProjectModel? _value;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NkoProjectsCubit, NkoProjectsState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => Shimmer.fromColors(
                  baseColor: AppColors.baseShimmer,
                  highlightColor: AppColors.highlightShimmer,
                  child: Container(
                    height: 50,
                    width: double.maxFinite,
                    color: AppColors.white,
                  ),
                ),
            loaded: (s) {
              final data = s.projects;

              return DropdownButtonHideUnderline(
                child: DropdownButton2<ProjectModel>(
                  dropdownElevation: 1,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  dropdownDecoration:
                      BoxDecoration(borderRadius: AppLayout.defaultBorderRadius, color: AppColors.white),
                  buttonDecoration: BoxDecoration(borderRadius: AppLayout.defaultBorderRadius, color: AppColors.white),
                  buttonWidth: double.maxFinite,
                  onChanged: (value) {
                    _value = value;
                    context.read<NkoProjectsCubit>().selectProject(value);
                  },
                  items: data
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.name),
                          ))
                      .toList(),
                  value: _value,
                ),
              );
            },
            error: (_) => const AppErrorWidget());
      },
    );
  }
}
