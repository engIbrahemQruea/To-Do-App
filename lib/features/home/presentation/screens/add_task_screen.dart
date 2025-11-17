import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/add_task_screen_body.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Add Task', style: ClsAppStyles.font32Bold),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          color: ClsAppColors.white,
          iconSize: 32.r,
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: AddTaskScreenBody(),
    );
  }
}
