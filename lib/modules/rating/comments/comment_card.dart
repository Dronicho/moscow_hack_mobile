import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/feedback_model.dart';
import 'package:moscow_hack/domain/services/modal_service.dart';
import 'package:moscow_hack/modules/nko/cubit/nko_cubit.dart';
import 'package:moscow_hack/modules/nko/nko_screen.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';

class CommentCard extends StatelessWidget {
  static final colorizeColors = [Colors.grey, Colors.grey[700]!, Colors.grey];

  final FeedbackModel model;
  const CommentCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NkoCubit>(
      create: (context) => get(param1: model.authorID),
      child: Builder(builder: (context) {
        return BlocBuilder<NkoCubit, NkoState>(
          builder: (context, state) {
            return Card(
              child: InkWell(
                onTap: () {
                  final id = state.map(
                      initial: (_) => null, loading: (_) => null, loaded: (d) => d.nko.id, error: (_) => null);
                  if (id != null) {
                    ModalService.showBottomSheet(
                      addNotch: false,
                      horizontalPadding: 0,
                      topPadding: 0,
                      child: BlocProvider<NkoCubit>(
                        create: (context) => get(param1: id),
                        child: MediaQuery(
                            data: MediaQuery.of(get<AppRouter>().navigatorKey.currentContext!),
                            child: NkoScreen(id: id)),
                      ),
                    );
                    // context.router.pushNativeRoute(MaterialPageRoute(
                    //     builder: (_) => BlocProvider<NkoCubit>(
                    //           create: (context) => get(param1: id),
                    //           child: NkoScreen(id: id),
                    //         )));
                  }
                },
                child: Padding(
                  padding: AppLayout.defaultPadding(),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AnimatedSwitcher(
                            duration: AppLayout.defaultDuration,
                            child: state.map(
                                initial: (_) => const SizedBox(),
                                loading: (_) => AnimatedTextKit(
                                      pause: Duration.zero,
                                      animatedTexts: [
                                        ColorizeAnimatedText(
                                          'Название НКО',
                                          speed: const Duration(milliseconds: 100),
                                          textStyle: context.textTheme.bodySmall!,
                                          colors: colorizeColors,
                                        ),
                                      ],
                                      repeatForever: true,
                                    ),
                                loaded: (s) => Text(s.nko.name,
                                    style: context.textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold)),
                                error: (_) => Text('no name', style: context.textTheme.bodyLarge))),
                        const SizedBox(height: AppLayout.defaultGap),
                        Text(model.value, style: context.textTheme.bodyLarge)
                      ],
                    ),
                    Text(model.rate.toStringAsPrecision(2),
                        style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
