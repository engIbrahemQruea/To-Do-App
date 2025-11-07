import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/routing/app_route_name.dart';
import 'package:to_do_app/features/add_task/ui/add_task_screen.dart';
import 'package:to_do_app/features/home/ui/home_screen.dart';
import 'package:to_do_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:to_do_app/features/splash/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: ClsAppRouteName.splashScreen,
        name: ClsAppRouteName.splashScreen,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: ClsAppRouteName.onBoardingScreen,
        name: ClsAppRouteName.onBoardingScreen,
        builder: (context, state) => OnboardingScreen(),
      ),
      GoRoute(
        path: ClsAppRouteName.homeScreen,
        name: ClsAppRouteName.homeScreen,
        builder: (context, state) => HomeScreen(),
      ),
            GoRoute(
        path: ClsAppRouteName.kAddTaskScreen,
        name: ClsAppRouteName.kAddTaskScreen,
        builder: (context, state) => AddTaskScreen(),
      ),
    ],

    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: Scaffold(body: Center(child: Text(state.error.toString()))),
      );
    },
  );
}
