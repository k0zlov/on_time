import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/application.dart';
import 'package:on_time/core/widgets/headers/main_header.dart';
import 'package:on_time/core/widgets/screens/invitation_loading_screen.dart';
import 'package:on_time/di_container.dart';
import 'package:on_time/features/auth/view/cubit/auth_cubit.dart';
import 'package:on_time/features/auth/view/screens/login_screen.dart';
import 'package:on_time/features/auth/view/screens/registration_screen.dart';
import 'package:on_time/features/timetables/view/cubit/timetables_cubit.dart';
import 'package:on_time/features/timetables/view/screens/dashboard_screen.dart';
import 'package:on_time/features/timetables/view/screens/timetable_screen.dart';
import 'package:on_time/features/timetables/view/screens/timetable_settings_screen.dart';

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

  static Widget renderMainHeader(Widget child) {
    return BlocProvider.value(
      value: getIt<TimetablesCubit>(),
      child: MainHeader(child: child),
    );
  }

  static Widget renderDashboardScreen() {
    return const DashboardScreen();
  }

  static Widget renderTimetableScreen({
    required int timetableId,
  }) {
    return TimetableScreen(timetableId: timetableId);
  }

  static Widget renderTimetableSettingsScreen({
    required int timetableId,
  }) {
    return TimetableSettingsScreen(timetableId: timetableId);
  }

  static Widget renderInvitationLoadingScreen(String code) {
    return InvitationLoadingScreen(code: code);
  }
}
