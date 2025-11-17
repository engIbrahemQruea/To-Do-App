
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/function_helper.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';

class CustomBuildDate extends StatelessWidget {
  const CustomBuildDate({
    super.key,
    required this.cubit,
  });

  final AddTaskCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Date', style: ClsAppStyles.font16Regular),
        verticalSpace(5),
        
        AppTextFormField(
          hintText: '${formatDate(cubit.currentDate)}',
          suffixIcon: IconButton(
            onPressed: () {
              context.read<AddTaskCubit>().emitShowDateAndSelectDate(
                context,
              );
            },
            color: ClsAppColors.white,
            iconSize: 30.r,
            icon: Icon(Icons.calendar_today_outlined),
          ),
          readOnly: true,
          validator: (_) {},
        ),
      ],
    );
  }
}
