import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/repositories/user_repository.dart';
import 'package:moscow_hack/modules/rating/comments/comment_card.dart';

class CommentsList extends StatelessWidget {
  const CommentsList({super.key});

  @override
  Widget build(BuildContext context) {
    final user = get<UserRepository>().currentUser;
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
        child: CommentCard(model: user.rates[index]),
      ),
      itemCount: user.rates.length,
    );
  }
}
