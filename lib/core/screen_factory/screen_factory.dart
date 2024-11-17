import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/application.dart';
import 'package:on_time/di_container.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/auth/view/screens/login_screen.dart';
import 'package:on_time/features/auth/view/screens/registration_screen.dart';

class ScreenFactory {
  const ScreenFactory._();

  static Widget renderApplication() {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>(),
      child: const Application(),
    );
  }

  static Widget renderLoginScreen() {
    return const LoginScreen();
  }

  static Widget renderRegistrationScreen() {
    return const RegistrationScreen();
  }
}
