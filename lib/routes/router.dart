import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/features/add_to_list/presentation/add_to_list_page.dart';
import 'package:todo_app/features/auth/bloc/auth_status_bloc.dart';
import 'package:todo_app/features/auth/presentation/login/login_page.dart';
import 'package:todo_app/features/auth/presentation/signup/signup_page.dart';
import 'package:todo_app/features/add_to_list/presentation/home_page.dart';
import 'package:todo_app/features/onboarding/presentation/page.dart';
import 'package:todo_app/features/welcome/welcome_page.dart';
import 'package:todo_app/routes/app_routes_names.dart';

abstract class AppRouter {
  static final routes = GoRouter(
    initialLocation: AppRoutes.welcomPage.path,
    redirectLimit: 3,

    redirect: (context, state) {
      final status = getIt<AuthStatusBloc>().state.isLoggedIn;
      final loggingIn =
          (state.uri.toString() == AppRoutes.loginPage.path) ||
          (state.uri.toString() == AppRoutes.welcomPage.path);

      if (!status && !loggingIn) {
        return AppRoutes.loginPage.path;
      }
      if (status && loggingIn) {
        return AppRoutes.homePage.path;
      }
      return null;
    },

    routes: [
      GoRoute(
        path: AppRoutes.onboarding.path,
        name: AppRoutes.onboarding.name,
        pageBuilder: (context, state) =>
            CupertinoPage(child: const OnboardingPage()),
      ),
      GoRoute(
        path: AppRoutes.welcomPage.path,
        name: AppRoutes.welcomPage.name,
        pageBuilder: (context, state) =>
            CupertinoPage(child: const WelcomePage()),
      ),

      // Main App
      ...[
        GoRoute(
          path: AppRoutes.homePage.path,
          name: AppRoutes.homePage.name,
          pageBuilder: (context, state) =>
              CupertinoPage(child: const HomePage()),
        ),
        GoRoute(
          path: '${AppRoutes.addToListPage.path}/:listId/:title',
          name: '${AppRoutes.addToListPage.name}_edit',
          pageBuilder: (context, state) => CupertinoPage(
            child: AddToListPage(
              listId: state.pathParameters['listId'] ?? '',
              title: state.pathParameters['title'] ?? '',
            ),
          ),
        ),
        GoRoute(
          path: AppRoutes.addToListPage.path,
          name: AppRoutes.addToListPage.name,
          pageBuilder: (context, state) =>
              CupertinoPage(child: AddToListPage(listId: '', title: '',)),
        ),
      ],

      // Auth Routes
      ...[
        GoRoute(
          path: AppRoutes.loginPage.path,
          name: AppRoutes.loginPage.name,
          pageBuilder: (context, state) =>
              CupertinoPage(child: const LoginPage()),
        ),
        GoRoute(
          path: AppRoutes.signupPage.path,
          name: AppRoutes.signupPage.name,
          pageBuilder: (context, state) =>
              CupertinoPage(child: const SignupPage()),
        ),
      ],
    ],
  );
}
