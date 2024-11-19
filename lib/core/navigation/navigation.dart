import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/navigation_stream.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/core/screen_factory/screen_factory.dart';
import 'package:on_time/core/services/auth_service.dart';
import 'package:on_time/di_container.dart';

class AppNavigation {
  AppNavigation._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    routerNeglect: true,
    navigatorKey: navigatorKey,
    initialLocation: '/dashboard/timetable/1/timetableSettings',
    refreshListenable: NavigationRefreshStream(
      stream: getIt<AuthService>().authStateChanges,
    ),
    redirect: (BuildContext context, GoRouterState state) async {
      final String location = state.matchedLocation;

      final bool onAuthPage = location == AppRoutes.login.path ||
          location == AppRoutes.registration.path;

      final bool isAuthorized = await getIt<AuthService>().isAuthorized();

      if (onAuthPage && isAuthorized) {
        return AppRoutes.dashboard.path;
      }

      if (!isAuthorized && !onAuthPage) {
        return AppRoutes.login.path;
      }

      if (location == '/') {
        return AppRoutes.login.path;
      }

      return null;
    },
    routes: [
      GoRoute(
        name: AppRoutes.login.name,
        path: AppRoutes.login.path,
        builder: (context, state) => ScreenFactory.renderLoginScreen(),
      ),
      GoRoute(
        name: AppRoutes.registration.name,
        path: AppRoutes.registration.path,
        builder: (context, state) => ScreenFactory.renderRegistrationScreen(),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return ScreenFactory.renderMainHeader(child);
        },
        routes: [
          GoRoute(
            name: AppRoutes.invitation.name,
            path: AppRoutes.invitation.path,
            builder: (context, state) {
              final String? code = state.pathParameters['code'];
              return ScreenFactory.renderInvitationLoadingScreen(code ?? '');
            },
          ),
          GoRoute(
            name: AppRoutes.dashboard.name,
            path: AppRoutes.dashboard.path,
            builder: (context, state) {
              return ScreenFactory.renderDashboardScreen();
            },
            routes: [
              GoRoute(
                name: AppRoutes.timetable.name,
                path: AppRoutes.timetable.path,
                builder: (context, state) {
                  final String? timetableId =
                      state.pathParameters['timetableId'];

                  return ScreenFactory.renderTimetableScreen(
                    timetableId: int.tryParse(timetableId ?? '') ?? -1,
                  );
                },
                routes: [
                  GoRoute(
                    name: AppRoutes.timetableSettings.name,
                    path: AppRoutes.timetableSettings.name,
                    builder: (context, state) {
                      final String? timetableId =
                          state.pathParameters['timetableId'];

                      return ScreenFactory.renderTimetableSettingsScreen(
                        timetableId: int.tryParse(timetableId ?? '') ?? -1,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
