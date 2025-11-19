import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/function_helper.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/generated/l10n.dart';

class BuildRowTime extends StatelessWidget {
  const BuildRowTime({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AddTaskCubit>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).from_field_text_start_time,
                style: ClsAppStyles.font16Bold,
              ),
              verticalSpace(5),

              AppTextFormField(
                hintText: '${formatTimeOfDay(cubit.currentTime)}',
                suffixIcon: IconButton(
                  onPressed: () {
                    cubit.emitShowStartTime(context);
                  },
                  color: checkThemModeInSharedPrefHelper(),
                  iconSize: 30.r,
                  icon: Icon(Icons.access_time_rounded),
                ),
                readOnly: true,
                validator: (_) {},
              ),
            ],
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).from_field_text_end_time,
                style: ClsAppStyles.font16Bold,
              ),
              verticalSpace(5),

              AppTextFormField(
                hintText: '${formatTimeOfDay(cubit.currentEndTime)}',
                suffixIcon: IconButton(
                  onPressed: () {
                    cubit.emitShowEndTime(context);
                  },
                  color: checkThemModeInSharedPrefHelper(),
                  iconSize: 30.r,
                  icon: Icon(Icons.access_time_rounded),
                ),
                readOnly: true,
                validator: (_) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
