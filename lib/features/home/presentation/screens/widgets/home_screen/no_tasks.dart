import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_assets.dart';

class NoTasks extends StatelessWidget {
  const NoTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ClsAppAssets.noTasksImage, width: 277.w, height: 300.h),
          Text(
            'What do you want to do today?',
            style: ClsAppStyles.font20RegularNoTask,
          ),
          verticalSpace(16),
          Text('Tap + to add your tasks', style: ClsAppStyles.font16Regular),
        ],
      ),
    );
  }
}
