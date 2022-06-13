import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:moscow_hack/modules/authorization/login/bloc/login_bloc.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_payload_dto.dart';
import 'package:moscow_hack/modules/authorization/login/domain/models/login_strategy.dart';
import 'package:moscow_hack/utils/context_extensions.dart';
import 'package:moscow_hack/widgets/primary_button.dart';

class StrategyDescription {
  final String name;
  final LoginStrategy strategy;

  const StrategyDescription(this.name, this.strategy);
}

class LoginScreen extends HookWidget {
  static const _strategies = {
    StrategyDescription('Волонтер', LoginStrategy.volonteer),
    StrategyDescription('НКО', LoginStrategy.nko),
    StrategyDescription('Бизнес', LoginStrategy.business),
  };

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Flexible(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.supervised_user_circle, color: context.colorScheme.primary, size: 48),
              _buildText(context),
            ],
          ),
        ),
        Flexible(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(hintText: 'Логин'),
                  onChanged: (value) {
                    _updateLoginPayload(context, LoginPayloadDto(email: value));
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(hintText: 'Пароль'),
                  onChanged: (value) {
                    _updateLoginPayload(context, LoginPayloadDto(password: value));
                  },
                ),
              ),
              PrimaryButton(
                onPressed: context.read<LoginBloc>().login,
                child: const Text('Продолжить'),
              ),
              BlocListener<LoginBloc, LoginState>(
                listenWhen: (previous, current) => previous.strategy != current.strategy,
                listener: (context, state) {
                  usernameController.clear();
                  passwordController.clear();
                },
                child: BlocBuilder<LoginBloc, LoginState>(
                    buildWhen: (previous, current) => previous.strategy != current.strategy,
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: _strategies
                            .where((element) => element.strategy != state.strategy)
                            .map((e) => TextButton(
                                onPressed: () {
                                  context.read<LoginBloc>().loginUpdate(strategy: e.strategy);
                                },
                                child: Text('Войти как ${e.name}')))
                            .toList(),
                      );
                    }),
              )
            ],
          ),
        )
      ]),
    );
  }

  Widget _buildText(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.strategy != current.strategy,
        builder: (context, state) {
          String text;
          switch (state.strategy) {
            case LoginStrategy.volonteer:
              text = 'ВОЛОНТËР';
              break;
            case LoginStrategy.nko:
              text = 'НКО';
              break;
            case LoginStrategy.business:
              text = 'БИЗНЕС';
              break;
          }
          return Text(
            text,
            style: context.textTheme.displayMedium?.copyWith(color: context.colorScheme.primary),
          );
        });
  }

  void _updateLoginPayload(BuildContext context, LoginPayloadDto dto) {
    context.read<LoginBloc>().loginUpdate(payload: dto);
  }
}
