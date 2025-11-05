// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';

class CustomShowModalBottomSheet extends StatelessWidget {
  const CustomShowModalBottomSheet({
    Key? key,
    required this.customContext,
  }) : super(key: key);
final BuildContext customContext;
  @override
  Widget build( context) {
    return Container(
      height: 270.h,
      color: ClsAppColors.lightBlack,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTextButton(
              buttonText: 'Task Completed ',
              textStyle: ClsAppStyles.font16Regular,
              onPressed: () {},
            ),
            AppTextButton(
              buttonText: 'Delete Completed ',
              textStyle: ClsAppStyles.font16Regular,
              backgroundColor: Colors.red,
              onPressed: () {},
            ),
            AppTextButton(
              buttonText: 'CANCEL',
              textStyle: ClsAppStyles.font16Regular,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
