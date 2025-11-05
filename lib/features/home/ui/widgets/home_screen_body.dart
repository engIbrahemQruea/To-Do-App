import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_assets.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/features/home/ui/widgets/custom_build_add_date.dart';
import 'package:to_do_app/features/home/ui/widgets/custom_build_task.dart';
import 'package:to_do_app/features/home/ui/widgets/no_tasks.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            '${DateFormat.yMMMMd().format(DateTime.now())}',
            style: ClsAppStyles.font24Bold,
          ),
          verticalSpace(12),
          Text('Today', style: ClsAppStyles.font24Bold),
          verticalSpace(6),
          CustomBuildAddDate(),
          verticalSpace(20),
          //NoTasks(),
          CustomBuildTask(),
        ],
      ),
    );
  }
}
