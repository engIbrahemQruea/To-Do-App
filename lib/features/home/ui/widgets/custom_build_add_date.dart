import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class CustomBuildAddDate extends StatelessWidget {
  const CustomBuildAddDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DatePicker(
        initialSelectedDate: DateTime.now(),
        selectionColor: ClsAppColors.buttonColor,
        DateTime.now(),
        monthTextStyle: ClsAppStyles.font16Regular,
        dayTextStyle: ClsAppStyles.font16Regular,
        dateTextStyle: ClsAppStyles.font16Regular,
        width: 55.w,
        height: 94.h,
        selectedTextColor: ClsAppColors.white,
        onDateChange: (selectedDate) {},
      ),
    );
  }
}
