import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/routing/app_route_name.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRouteName.kHomeScreen,
        name: AppRouteName.kHomeScreen,
        builder: (context, state) => HomeScreen(),
      ),


    ],

    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: Scaffold(body: Center(child: Text(state.error.toString()))),
      );
    },
  );
}
