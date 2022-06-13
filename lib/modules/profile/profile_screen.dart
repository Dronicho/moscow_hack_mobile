import 'package:flutter/material.dart';
import 'package:moscow_hack/domain/app_bootstrapper.dart';
import 'package:moscow_hack/domain/models/user_model.dart';
import 'package:moscow_hack/domain/repositories/auth_repository.dart';
import 'package:moscow_hack/domain/repositories/user_repository.dart';
import 'package:moscow_hack/navigation/app_router.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/utils/layout.dart';
import 'package:moscow_hack/widgets/image.dart';
import 'package:moscow_hack/widgets/primary_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = get<UserRepository>().currentUser;
    final fio = user.name.split(' ');
    return Scaffold(
      body: StreamBuilder<UserModel>(
        stream: get<UserRepository>().userStream,
        builder: (context, snapshot) {
          return NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                pinned: true,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                  expandedTitleScale: 1.2,
                  centerTitle: false,
                  background: AppImage(
                    url: user.photoURL,
                    rounded: false,
                    height: null,
                    width: double.maxFinite,
                  ),
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Профиль', style: context.textTheme.titleLarge),
                    ],
                  ),
                ),
              )
            ],
            body: ListView(
              children: [
                PrimaryButton.outlined(onPressed: () {}, child: const Text('ЗАГРУЗИТЬ ФОТО')),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextCard(hint: 'Email', text: user.email),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextCard(hint: 'Имя', text: fio[0]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextCard(hint: 'Фамилия', text: fio.length > 1 ? fio[1] : null),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextCard(hint: 'Пароль', text: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextCard(hint: 'О себе', text: user.description),
                ),
                PrimaryButton.error(
                    onPressed: () async {
                      await get<AuthRepository>().logout();
                      get<AppRouter>().replaceNamed('/home');
                    },
                    child: const Text('Выйти'))
              ],
            ),
          );
        },
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  final String hint;
  final String? text;

  const TextCard({super.key, required this.hint, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: AppLayout.defaultPadding(2),
        child: Text(text ?? hint),
      ),
    );
  }
}
