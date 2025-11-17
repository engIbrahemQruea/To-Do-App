import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/helpers/function_helper.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/features/home/data/models/cls_add_task_model.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_state.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';

class AddTaskBlocListener extends StatelessWidget {
  const AddTaskBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTaskCubit, AddTaskState>(
      listener: (context, state) {
        state.whenOrNull(
          insertTaskToDatabaseLoading: () =>
              Center(child: CircularProgressIndicator()),
          insertTaskToDatabaseSuccess: () {
            //   context.read<AddTaskCubit>().homeCubit.emitGetAllTask();
            showToast(message: "add successfluy", state: ToastStates.success);
          },
        );
      },
      child: AppTextButton(
        buttonText: 'Create task',
        textStyle: ClsAppStyles.font16Regular,
        buttonHeight: 60,
        onPressed: () {
          if (context.read<AddTaskCubit>().formKey.currentState!.validate()) {
            context.read<AddTaskCubit>().emitAddTask();
            context.read<HomeScreenCubit>().emitGetAllTask();
            context.read<GetAllTaskByDateCubit>().emitGetAllTaskByDate(
              context.read<GetAllTaskByDateCubit>().currentDate,
            );
            context.pop();
          }
        },
      ),
    );
  }
}
