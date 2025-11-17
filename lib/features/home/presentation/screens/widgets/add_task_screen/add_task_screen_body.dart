import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/add_task_bloc_listener.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/build_color.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/build_row_time.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/custom_build_date.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/custom_build_remind.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/custom_build_repeat.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/add_task_screen/custom_from_field.dart';

class AddTaskScreenBody extends StatelessWidget {
  const AddTaskScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AddTaskCubit>();
    List<int> remindList = [5, 10, 15, 20];
    List<String> repeatList = ['None', 'Daily', 'Weekly', 'Monthly'];
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomFormField(),
            verticalSpace(10),
            CustomBuildDate(cubit: cubit),
            verticalSpace(10),
            BuildRowTime(),
            verticalSpace(10),
            CustomBuildRemind(remindList: remindList),
            verticalSpace(10),
            CustomBuildRepeat(repeatList: repeatList),
            verticalSpace(10),
            BuildColor(),
            verticalSpace(40),
            AddTaskBlocListener(),
          ],
        ),
      ),
    );
  }
}
