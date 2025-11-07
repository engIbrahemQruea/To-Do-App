import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class BuildContainerBody extends StatelessWidget {
  const BuildContainerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        horizontalSpace(15),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title', style: ClsAppStyles.font24Bold),
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: ClsAppColors.white,
                    size: 32.r,
                  ),
                  Text(
                    '09:33 PM - 09:48 PM',
                    style: ClsAppStyles.font16Regular,
                  ),
                ],
              ),
              Text('SubTitle', style: ClsAppStyles.font24Bold),
            ],
          ),
        ),
        VerticalDivider(
          indent: 45.w,
          endIndent: 45.w,
          thickness: 2.r,
          color: ClsAppColors.white,
        ),
        RotatedBox(
          quarterTurns: 3,
          child: Text('TODO', style: ClsAppStyles.font16Regular),
        ),
        horizontalSpace(10),
      ],
    );
  }
}
