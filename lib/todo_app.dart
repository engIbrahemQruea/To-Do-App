import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/routing/app_router.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'To-Do App',
        debugShowCheckedModeBanner: false,
        //themeMode: ThemeService().theme,
      ),
    );
  }
}
