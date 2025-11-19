// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/generated/l10n.dart';

class BuildContainerBody extends StatelessWidget {
  const BuildContainerBody({Key? key, required this.taskModelTest})
    : super(key: key);
  final EntityTask taskModelTest;
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
              Text(taskModelTest.title, style: ClsAppStyles.font24Bold),
              Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: checkThemModeInSharedPrefHelper(),
                    size: 32.r,
                  ),
                  horizontalSpace(10),
                  Text(
                    '${taskModelTest.startTime} - ${taskModelTest.endTime}',
                    style: ClsAppStyles.font16Bold,
                  ),
                ],
              ),
              Text(taskModelTest.note, style: ClsAppStyles.font24Bold),
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
          child: Text(
            taskModelTest.isCompleted == 1
                ? S.of(context).rotateBox_completed_home
                : S.of(context).rotateBox_todo_home,
            style: ClsAppStyles.font16Bold,
          ),
        ),
        horizontalSpace(10),
      ],
    );
  }
}
