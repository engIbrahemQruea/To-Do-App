import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/di/dependency_injection.dart';
import 'package:to_do_app/core/helpers/my_cubit_observer.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';
import 'package:to_do_app/core/service/sqf_lite_data_base.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/theme_cubit/switch_theme_cubit.dart';
import 'package:to_do_app/todo_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await setupGetIt();
  await SharedPrefHelper.init();
  await SqfLiteDatabase.initDatabase();
  runApp(
    BlocProvider.value(
      value: getIt<SwitchThemeCubit>(),
      child: const TodoApp(),
    ),
  );
}
