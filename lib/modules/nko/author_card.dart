import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/modules/nko/cubit/nko_cubit.dart';
import 'package:moscow_hack/modules/nko/nko_screen.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/image.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:moscow_hack/widgets/rating_bar.dart';
import 'package:moscow_hack/widgets/tags_list.dart';

class AuthorCard extends StatelessWidget {
  final String id;
  final bool showNavigate;

  const AuthorCard({super.key, required this.id, this.showNavigate = true});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NkoCubit>(
      create: (context) => get(param1: id),
      child: Builder(builder: (context) {
        return BlocBuilder<NkoCubit, NkoState>(
          builder: (context, state) {
            return state.map(
                initial: (context) => const SizedBox(),
                loading: (context) => const LoadingWidget(),
                loaded: (s) {
                  final data = s.nko;
                  return Card(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(children: [
                            AppImage(url: data.photoURL),
                            const SizedBox(width: 8.0),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data.name),
                                  TagsList.secondary(values: data.tags),
                                  const SizedBox(height: 8.0),
                                  RatingBar(value: data.rating)
                                ],
                              ),
                            )
                          ]),
                          if (showNavigate)
                            PrimaryButton(
                              height: 40,
                              color: AppColors.purple,
                              onPrimary: AppColors.white,
                              margin: const EdgeInsets.only(top: 12.0),
                              child: const Text('ПОДРОБНЕЕ'),
                              onPressed: () {
                                context.router.pushNativeRoute(MaterialPageRoute(
                                    builder: (_) => BlocProvider<NkoCubit>(
                                          create: (context) => get(param1: id),
                                          child: NkoScreen(id: id),
                                        )));
                              },
                            )
                        ],
                      ),
                    ),
                  );
                },
                error: (_) => AppErrorWidget(
                      onPressed: context.read<NkoCubit>().load,
                    ));
          },
        );
      }),
    );
  }
}
