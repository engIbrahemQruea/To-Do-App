import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/routing/app_route_name.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/features/home/ui/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: HomeScreenBody()),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: ClsAppColors.buttonColor,
        label: Text('Add Task', style: ClsAppStyles.font20Regular),
        icon: Icon(Icons.add, color: ClsAppColors.white, size: 30.r),
        onPressed: () {
          context.pushNamed(ClsAppRouteName.kAddTaskScreen);
        },
      ),
    );
  }
}
