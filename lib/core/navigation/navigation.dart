import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:on_time/core/navigation/navigation_stream.dart';
import 'package:on_time/core/navigation/routes.dart';
import 'package:on_time/core/services/auth_service.dart';
import 'package:on_time/di_container.dart';

class AppNavigation {
  AppNavigation._();

  static final navigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
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
        path: AppRoutes.login.name,
      ),
      GoRoute(
        name: AppRoutes.registration.name,
        path: AppRoutes.registration.name,
      ),
      GoRoute(
        name: AppRoutes.dashboard.name,
        path: AppRoutes.dashboard.path,
      ),
    ],
  );
}
