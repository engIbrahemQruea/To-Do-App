import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/di/dependency_injection.dart';
import 'package:to_do_app/core/routing/app_route_name.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/task_view_cubit/task_view_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/update_delete_task/update_delete_task_cubit.dart';
import 'package:to_do_app/features/home/presentation/screens/add_task_screen.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/features/home/presentation/screens/home_screen.dart';
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
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider.value(value: getIt<HomeScreenCubit>()),
            BlocProvider.value(value: getIt<UpdateDeleteTaskCubit>()),
            BlocProvider.value(value: getIt<AddTaskCubit>()),
            BlocProvider.value(value: getIt<TasksViewCubit>()),
            // BlocProvider.value(value: getIt<SwitchThemeCubit>()),
            // BlocProvider.value(value: getIt<SwitchLanguageCubit>()),
            BlocProvider.value(
              value: getIt<GetAllTaskByDateCubit>()
                ..emitGetAllTaskByDate(DateTime.now()),
            ),
          ],

          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: ClsAppRouteName.kAddTaskScreen,
        name: ClsAppRouteName.kAddTaskScreen,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider.value(value: getIt<AddTaskCubit>()),
            BlocProvider.value(value: getIt<HomeScreenCubit>()),
            BlocProvider.value(value: getIt<GetAllTaskByDateCubit>()),
          ],
          child: AddTaskScreen(),
        ),
      ),
    ],

    errorPageBuilder: (context, state) {
      return MaterialPage(
        child: Scaffold(body: Center(child: Text(state.error.toString()))),
      );
    },
  );
}
