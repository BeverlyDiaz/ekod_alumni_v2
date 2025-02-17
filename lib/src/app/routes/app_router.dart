// ignore_for_file: unused_local_variable

import 'package:ekod_alumni/src/app/app.dart';
import 'package:ekod_alumni/src/app/routes/go_router_refresh_stream.dart';
import 'package:ekod_alumni/src/features/authentication/authentication.dart';
import 'package:ekod_alumni/src/features/authentication/view/home_view.dart';
import 'package:ekod_alumni/src/features/authentication/view/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

/// All the supported routes in the app.
/// By using an enum, we route by name using this syntax:
///
/// ```dart
/// context.goNamed(AppRoute.home.name)
/// ```
enum AppRoute {
  welcome,
  signIn,
  signUp,
  home,
  profile,
  alumnis,
  offers,
}

@riverpod
GoRouter goRouter(Ref ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    initialLocation: '/',
    // * Redirect logic based on the user authentication state
    redirect: (_, state) {
      final path = state.uri.path;

      final user = authRepository.currentUser;
      final isLoggedIn = user != null;

      // TODO: If the user is logged in, redirect to the home page
      // TODO: If the user is not logged in, redirect to the welcome page
      if (isLoggedIn) {
        if (path == '/' || path == '/sign-up' || path == 'sign-in') {
          return '/home';
        }
      }

      return null;
    },
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.welcome.name,
        pageBuilder: (_, __) => const NoTransitionPage(
          child: WelcomeView(),
        ),
      ),
      GoRoute(
        path: '/sign-in',
        name: AppRoute.signIn.name,
        pageBuilder: (_, __) => const NoTransitionPage(
          // TODO: Add the SignInView
          child: SignInView(),
        ),
      ),
      GoRoute(
        path: '/sign-up',
        name: AppRoute.signUp.name,
        pageBuilder: (_, __) => const NoTransitionPage(
          // TODO: Add the SignUpView
          child: Scaffold(),
        ),
      ),
      StatefulShellRoute.indexedStack(
        pageBuilder: (_, __, navigationShell) {
          return NoTransitionPage(
            child: ScaffoldWithNestedNavigation(
              navigationShell: navigationShell,
            ),
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/home',
                name: AppRoute.home.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  // TODO: Add the HomeView
                  child: HomeView(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/profile',
                name: AppRoute.profile.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  // TODO: Add the ProfileView
                  child: Scaffold(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/alumnis',
                name: AppRoute.alumnis.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  // TODO: Add the ProfileView
                  child: Scaffold(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/offers',
                name: AppRoute.offers.name,
                pageBuilder: (_, __) => const NoTransitionPage(
                  // TODO: Add the ProfileView
                  child: Scaffold(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
