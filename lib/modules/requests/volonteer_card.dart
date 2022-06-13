import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/user_model.dart';
import 'package:moscow_hack/domain/services/modal_service.dart';
import 'package:moscow_hack/modules/requests/cubit/user_cubit.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/utils/utils.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/image.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';
import 'package:moscow_hack/widgets/primary_button.dart';
import 'package:moscow_hack/widgets/rating_bar.dart';
import 'package:moscow_hack/widgets/widget_with_child.dart';

class VolonteerCard extends StatelessWidget {
  final String id;
  final VoidCallback? onAccept;
  final VoidCallback? onReject;

  const VolonteerCard({super.key, required this.id, this.onAccept, this.onReject});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (context) => get(param1: id),
      child: Builder(builder: (context) {
        return BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            return state.map(
                initial: (context) => const SizedBox(),
                loading: (context) => const LoadingWidget(),
                loaded: (s) {
                  final data = s.user;
                  return Card(
                    color: AppColors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          UserRow(user: data),
                          PrimaryButton(
                            height: 40,
                            color: AppColors.purple,
                            onPrimary: AppColors.white,
                            margin: const EdgeInsets.only(top: 12.0),
                            child: const Text('ПРОФИЛЬ'),
                            onPressed: () {
                              ModalService.showBottomSheet(
                                  child: DraggableScrollableSheet(
                                expand: false,
                                initialChildSize: 0.6,
                                builder: (context, _) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: UserRow(user: data),
                                    ),
                                    const SizedBox(height: AppLayout.defaultGap * 2),
                                    WidgetWithTitle(
                                        title: 'КОНТАКТЫ',
                                        child: TextButton(
                                            style: TextButton.styleFrom(padding: const EdgeInsets.all(2)),
                                            onPressed: () {
                                              Utils.launchUrl('https://t.me/${data.contact?.value}');
                                            },
                                            child: const Text(
                                              'Telegram',
                                              style: TextStyle(decoration: TextDecoration.underline),
                                            ))),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 32.0),
                                      child: AcceptRejectButtons(
                                        onAccept: onAccept,
                                        onReject: onReject,
                                      ),
                                    )
                                  ],
                                ),
                              ));
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: AcceptRejectButtons(
                              onAccept: onAccept,
                              onReject: onReject,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                error: (_) => AppErrorWidget(
                      onPressed: context.read<UserCubit>().load,
                    ));
          },
        );
      }),
    );
  }
}

class AcceptRejectButtons extends StatelessWidget {
  final VoidCallback? onAccept;
  final VoidCallback? onReject;

  const AcceptRejectButtons({super.key, this.onAccept, this.onReject});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
            flex: 3,
            child: PrimaryButton.error(
              onPressed: onReject,
              margin: EdgeInsets.zero,
              child: const Text('ОТКЛОНИТЬ'),
            )),
        const Spacer(),
        Flexible(
            flex: 3,
            child: PrimaryButton(onPressed: onAccept, margin: EdgeInsets.zero, child: const Text('ПРИГЛАСИТЬ'))),
      ],
    );
  }
}

class UserRow extends StatelessWidget {
  final UserModel user;

  const UserRow({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      AppImage(url: user.photoURL),
      const SizedBox(width: 8.0),
      Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.name),
            // TagsList.secondary(values: data.tags),
            const SizedBox(height: 8.0),
            RatingBar(value: user.rating)
          ],
        ),
      )
    ]);
  }
}
