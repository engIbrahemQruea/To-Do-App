// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/helpers/function_helper.dart';
import 'package:to_do_app/core/helpers/spacing.dart';

import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/update_delete_task/update_delete_task_cubit.dart';
import 'package:to_do_app/generated/l10n.dart';

class CustomShowModalBottomSheet extends StatelessWidget {
  const CustomShowModalBottomSheet({
    Key? key,
    required this.customContext,
    required this.index,
    required this.isCompleted,
  }) : super(key: key);

  final BuildContext customContext;
  final int index;
  final int isCompleted;
  @override
  Widget build(customContext) {
    return Container(
      height: 270.h,
      color: ClsAppColors.lightBlack,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            verticalSpace(20),
            isCompleted == 1
                ? Container()
                : AppTextButton(
                    buttonText: S
                        .of(customContext)
                        .btn_sheet_completed_home_screen,
                    textStyle: ClsAppStyles.font16Bold,
                    onPressed: () {
                      customContext
                          .read<UpdateDeleteTaskCubit>()
                          .emitUpdateTask(index);
                      customContext.read<HomeScreenCubit>().emitGetAllTask();
                      customContext
                          .read<GetAllTaskByDateCubit>()
                          .emitGetAllTaskByDate(
                            customContext
                                .read<GetAllTaskByDateCubit>()
                                .currentDate,
                          );
                      showToast(
                        message: S.of(customContext).show_toast_complete_task,
                        state: ToastStates.success,
                      );
                      customContext.pop();
                    },
                  ),
            verticalSpace(20),

            AppTextButton(
              buttonText: S.of(customContext).btn_sheet_delete_home_screen,
              textStyle: ClsAppStyles.font16Bold,
              backgroundColor: Colors.red,
              onPressed: () {
                //show dialog to confirm delete task
                showDialog(
                  context: customContext,
                  builder: (BuildContext context) {
                    return confirmDeleteTask(customContext, context);
                  },
                );
              },
            ),
            verticalSpace(20),

            AppTextButton(
              buttonText: S.of(customContext).btn_sheet_cancel_home_screen,
              textStyle: ClsAppStyles.font16Bold,
              onPressed: () {
                customContext.pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog confirmDeleteTask(
    BuildContext customContext,
    BuildContext context,
  ) {
    return AlertDialog(
      icon: Icon(Icons.auto_delete_outlined, size: 40.r),
      iconColor: Colors.red,
      title: Text(
        S.of(customContext).message_alert_confirm_delete_task,
        style: ClsAppStyles.font16Bold,
      ),
      actions: [
        TextButton(
          onPressed: () {
            customContext.read<UpdateDeleteTaskCubit>().emitDeleteTask(index);
            customContext.read<HomeScreenCubit>().emitGetAllTask();
            customContext.read<GetAllTaskByDateCubit>().emitGetAllTaskByDate(
              customContext.read<GetAllTaskByDateCubit>().currentDate,
            );
            showToast(
              message: S.of(customContext).show_toast_delete_task,
              state: ToastStates.success,
            );

            context.pop();
            customContext.pop();
          },

          child: Text(
            S.of(customContext).btn_alert_delete_task,
            style: ClsAppStyles.font16Bold,
          ),
        ),
        horizontalSpace(30),
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            S.of(customContext).btn_alert_cancel_task,
            style: ClsAppStyles.font16Bold,
          ),
        ),
      ],
    );
  }
}
