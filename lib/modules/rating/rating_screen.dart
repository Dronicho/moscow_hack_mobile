import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/repositories/user_repository.dart';
import 'package:moscow_hack/modules/rating/comments/comments_list.dart';
import 'package:moscow_hack/modules/rating/cubit/rating_cubit.dart';
import 'package:moscow_hack/modules/rating/custom_app_bar.dart';
import 'package:moscow_hack/modules/rating/rating_list.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/widgets/stateless_widget_with_bloc.dart';

class RatingScreen extends StatelessWidgetWithBlocs {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: false,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverPersistentHeader(
                delegate: CustomAppBar('РЕЙТИНГ', get<UserRepository>().currentUser.rating),
                pinned: true,
              ),
              SliverPadding(padding: AppLayout.defaultPadding()),
              const SliverToBoxAdapter(
                child: TabBar(
                  tabs: [Tab(text: 'ОБЩИЙ РЕЙТИНГ'), Tab(text: 'КОММЕНТАРИИ')],
                  labelColor: AppColors.white,
                  unselectedLabelColor: AppColors.black,
                ),
              ),
            ];
          },
          body: const TabBarView(children: [RatingList(), CommentsList()]),
        ),
      ),
    );
  }

  @override
  List<BlocProvider<StateStreamableSource<Object?>>> getProviders() {
    return [
      BlocProvider<RatingCubit>(create: (context) => get()),
    ];
  }
}
