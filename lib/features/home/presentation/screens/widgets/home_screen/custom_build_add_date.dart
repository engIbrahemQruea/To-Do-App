import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_cubit.dart';

class CustomBuildAddDate extends StatelessWidget {
  const CustomBuildAddDate({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: DatePicker(
        DateTime.now(),
        // initialPageIndicatorDateTime: DateTime.now(),
        initialSelectedDate: DateTime.now(),
        selectionColor: ClsAppColors.buttonColor,
        // DateTime.now(),
        monthTextStyle: ClsAppStyles.font16Regular,
        dayTextStyle: ClsAppStyles.font16Regular,
        dateTextStyle: ClsAppStyles.font16Regular,
        width: 60.w,
        height: 94.h,
        selectedTextColor: ClsAppColors.white,
        onDateChange: (selectedDate) {
          context.read<GetAllTaskByDateCubit>().currentDate = selectedDate;
          context.read<GetAllTaskByDateCubit>().emitGetAllTaskByDate(
            selectedDate,
          );
        },
      ),
    );
  }
}
