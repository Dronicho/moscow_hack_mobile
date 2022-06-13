import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/modules/projects/project/cubit/project_cubit.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/utils/wrap_with_padding.dart';
import 'package:moscow_hack/widgets/app_chip.dart';
import 'package:moscow_hack/modules/nko/author_card.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/image.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';
import 'package:moscow_hack/widgets/multiline_text_with_title.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:moscow_hack/widgets/stateless_widget_with_bloc.dart';
import 'package:moscow_hack/widgets/tags_list.dart';
import 'package:moscow_hack/widgets/text_with_title.dart';
import 'package:moscow_hack/widgets/widget_with_child.dart';

class ProjectScreen extends StatelessWidgetWithBloc<ProjectCubit> {
  final String id;
  const ProjectScreen({super.key, required this.id});

  @override
  ProjectCubit createCubit(BuildContext context) => get(param1: id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProjectCubit, ProjectState>(
          builder: (context, state) => state.map(
              initial: (context) => const SizedBox(),
              loading: (context) => const LoadingWidget(),
              loaded: (s) {
                final data = s.project;
                final isRegstered = context.read<ProjectCubit>().isRegstered();
                return NestedScrollView(
                  physics: const PageScrollPhysics(),
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 250,
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: const EdgeInsets.only(left: 46.0, bottom: 8.0),
                        expandedTitleScale: 1.2,
                        centerTitle: false,
                        background: AppImage(
                          url: data.photoURL,
                          shadowed: true,
                          rounded: false,
                          height: null,
                          width: double.maxFinite,
                        ),
                        title: Text(data.name, style: context.textTheme.titleLarge?.copyWith(color: AppColors.white)),
                      ),
                    )
                  ],
                  body: ListView(
                    children: [
                      // Stack(
                      //   children: [
                      //     const Positioned(
                      //       top: 8.0,
                      //       left: 8.0,
                      //       child: BackButton(),
                      //     ),
                      //     Positioned(
                      //       left: 28,
                      //       bottom: 16,
                      //       child: SizedBox(
                      //         width: context.mediaQuerySize.width / 1.5,
                      //         child: ,
                      //       ),
                      //     )
                      //   ],
                      // ),
                      if (isRegstered) ...[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: const [
                              Icon(
                                (Icons.check_circle),
                                color: AppColors.green,
                              ),
                              SizedBox(width: 8),
                              Text('Вы участвуете')
                            ],
                          ),
                        ),
                        PrimaryButton(
                          color: AppColors.purple,
                          onPrimary: AppColors.white,
                          onPressed: () {
                            // ModalService.showSnackBar(
                            //     title: 'Вы успешно подписались на рассыку', contentType: ContentType.success, message: '');
                          },
                          child: const Text('ПОДПИСАТЬСЯ НА РАССЫЛКУ'),
                        ),
                      ] else
                        PrimaryButton(
                          onPressed: context.read<ProjectCubit>().register,
                          child: const Text('ЗАРЕГИСТРИРОВАТЬСЯ'),
                        ),
                      ...wrapWithPadding(
                          context,
                          [
                            Wrap(
                              runSpacing: 8.0,
                              spacing: 8.0,
                              children: [
                                AppChip.neutral(
                                    label:
                                        '${AppLayout.dateTimeFormat.format(data.timeStart)} - ${AppLayout.dateTimeFormat.format(data.timeEnd)}'),
                                const AppChip.neutral(label: 'Г. МОСКВА, ПОКРОВКА, 47'),
                              ],
                            ),
                            TextWithTitle(title: 'ОПИСАНИЕ', text: data.description),
                            TagsList.primary(values: data.skills),
                            TagsList.secondary(values: data.tags),
                            TagsList.neutral(values: [data.participation]),
                            MultilineTextWithTitle(
                              title: 'ТРЕБОВАНИЯ К ВОЛОНТËРАМ',
                              spans: data.requirements,
                            ),
                            MultilineTextWithTitle(
                              title: 'СЕРВИСЫ ДЛЯ ВОЛОНТËРОВ',
                              spans: data.services,
                            ),
                            WidgetWithTitle(
                              title: 'РОЛИ',
                              child: TagsList.neutral(values: data.roles),
                            ),
                            WidgetWithTitle(
                              title: 'ВОЗРАСТНОЕ ОГРАНИЧЕНИЕ',
                              child: AppChip.danger(label: '${data.ageStart}+'),
                            ),
                            WidgetWithTitle(
                              title: 'ОРГАНИЗАТОР',
                              child: AuthorCard(
                                id: data.authorID,
                              ),
                            )
                          ],
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16))
                    ],
                  ),
                );
              },
              error: (_) => AppErrorWidget(
                    onPressed: context.read<ProjectCubit>().load,
                  ))),
    );
  }
}
