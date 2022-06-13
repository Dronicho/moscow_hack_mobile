import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/feedback_model.dart';
import 'package:moscow_hack/domain/repositories/review_api.dart';
import 'package:moscow_hack/domain/services/modal_service.dart';
import 'package:moscow_hack/modules/nko/author_card.dart';
import 'package:moscow_hack/modules/nko/cubit/nko_cubit.dart';
import 'package:moscow_hack/modules/projects/project_card.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/wrap_with_padding.dart';
import 'package:moscow_hack/widgets/app_chip.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/image.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:moscow_hack/widgets/rating_bar.dart';
import 'package:moscow_hack/widgets/stateless_widget_with_bloc.dart';
import 'package:moscow_hack/widgets/tags_list.dart';
import 'package:moscow_hack/widgets/text_with_title.dart';
import 'package:moscow_hack/widgets/widget_with_child.dart';

class NkoScreen extends StatelessWidgetWithBloc<NkoCubit> {
  final String id;

  @override
  NkoCubit createCubit(BuildContext context) {
    return NkoCubit(id, get());
  }

  const NkoScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NkoCubit, NkoState>(
          builder: (context, state) => state.map(
              initial: (context) => const SizedBox(),
              loading: (context) => const LoadingWidget(),
              loaded: (s) {
                final data = s.nko;
                return NestedScrollView(
                  physics: const PageScrollPhysics(),
                  headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 300,
                      flexibleSpace: FlexibleSpaceBar(
                        titlePadding: const EdgeInsets.only(left: 46.0, bottom: 8.0),
                        expandedTitleScale: 1.2,
                        centerTitle: false,
                        background: AppImage(
                          shadowed: true,
                          url: data.photoURL,
                          rounded: false,
                          height: null,
                          width: double.maxFinite,
                        ),
                        title: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(data.name,
                                style: context.textTheme.titleLarge
                                    ?.copyWith(color: innerBoxIsScrolled ? null : AppColors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                  body: ListView(
                    children: [
                      // Stack(
                      //   children: [
                      //     AppImage(
                      //       rounded: false,
                      //       url: data.photoURL,
                      //       height: 250,
                      //       width: double.maxFinite,
                      //     ),
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
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           mainAxisSize: MainAxisSize.min,
                      //           children: [
                      //             Text(data.name,
                      //                 style: context.textTheme.titleLarge?.copyWith(color: AppColors.white)),
                      //             Text(
                      //               data.description,
                      //               style: const TextStyle(color: AppColors.white),
                      //             )
                      //           ],
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // ),
                      PrimaryButton(
                        child: const Text('ОСТАВИТЬ ОТЗЫВ'),
                        onPressed: () async {
                          await ModalService.showBottomSheet<FeedbackModel>(
                              child: RateWidget(
                            id: id,
                            type: RateType.nko,
                          ));
                        },
                      ),
                      ...wrapWithPadding(
                          context,
                          [
                            TextWithTitle(title: 'ОПИСАНИЕ', text: data.description),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft, child: AppChip.neutral(label: 'ИНН ${data.inn}')),
                                const Align(
                                    alignment: Alignment.centerLeft,
                                    child: AppChip.neutral(label: 'Г. МОСКВА, ПОКРОВКА, 47')),
                                TagsList.secondary(
                                  values: data.tags,
                                )
                              ],
                            ),
                            const RatingBar(value: 4.5, fontSize: 16),
                            WidgetWithTitle(
                                title: 'ПРОЕКТЫ ОРГАНИЗАЦИИ',
                                child: Column(
                                  children: [
                                    Card(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: const [Text('name'), Icon(Icons.chevron_right)]),
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0))
                    ],
                  ),
                );
              },
              error: (_) => AppErrorWidget(
                    onPressed: context.read<NkoCubit>().load,
                  ))),
    );
  }
}

class RateWidget extends StatefulWidget {
  final ValueSetter<FeedbackModel>? onSend;
  final RateType type;
  final String id;

  const RateWidget({Key? key, this.onSend, required this.type, required this.id}) : super(key: key);

  @override
  State<RateWidget> createState() => _RateWidgetState();
}

class _RateWidgetState extends State<RateWidget> {
  var _model = const FeedbackModel(rate: 4, value: '');
  final _api = get<ReviewApi>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTop(),
        Slider(
            label: _model.rate.toInt().toString(),
            min: 1,
            max: 5,
            divisions: 4,
            value: _model.rate,
            onChanged: (value) {
              setState(() {
                _model = _model.copyWith(rate: value);
              });
            }),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(hintText: 'Комментарий'),
            onChanged: (value) {
              setState(() {
                _model = _model.copyWith(value: value);
              });
            },
          ),
        ),
        PrimaryButton(
          child: const Text('Подтвердить'),
          onPressed: () async {
            switch (widget.type) {
              case RateType.nko:
                await _api.reviewNko(widget.id, _model);
                break;
              case RateType.project:
                await _api.reviewProject(widget.id, _model);
                break;
            }
            // ignore: use_build_context_synchronously
            context.pop(_model);
          },
        )
      ],
    );
  }

  Widget _buildTop() {
    switch (widget.type) {
      case RateType.nko:
        return AuthorCard(
          id: widget.id,
          showNavigate: false,
        );
      case RateType.project:
        return ProjectCard(id: widget.id);
    }
  }
}

enum RateType { nko, project }
