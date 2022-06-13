import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moscow_hack/modules/rating/cubit/rating_cubit.dart';
import 'package:moscow_hack/modules/rating/rating_card.dart';
import 'package:moscow_hack/theme/colors.dart';
import 'package:moscow_hack/widgets/error_widget.dart';
import 'package:moscow_hack/widgets/loading_widget.dart';

class RatingList extends StatelessWidget {
  const RatingList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RatingCubit, RatingState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => const SizedBox(),
            Loading: (_) => const LoadingWidget(),
            loaded: (s) {
              return ListView.builder(
                itemCount: s.ratings.length,
                itemBuilder: (context, index) {
                  final rating = s.ratings[index];
                  bool selected = false;
                  Color color = AppColors.green;
                  if (rating.place == 1) color = AppColors.gold;
                  if (rating.place == 2) color = AppColors.silver;
                  if (rating.place == 3) color = AppColors.bronze;
                  if (rating.isClient) selected = true;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                    child: RatingCard(
                      selected: selected,
                      place: rating.place,
                      name: rating.name,
                      rating: rating.rating,
                      indicatorColor: color,
                    ),
                  );
                },
              );
            },
            error: (_) => const AppErrorWidget());
      },
    );
  }
}
