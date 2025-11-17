import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/task_view_cubit/task_view_cubit.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/build_all_task.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/build_task_or_no_task.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/custom_build_add_date.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';

class RefreshHomeScreen extends StatelessWidget {
  const RefreshHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return Future.delayed(Duration(seconds: 2));
      },

      child: BlocBuilder<TasksViewCubit, bool>(
        builder: (context, showAllTasks) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Today', style: ClsAppStyles.font24Bold),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      if (showAllTasks == false) {
                        context.read<HomeScreenCubit>().emitGetAllTask();
                      }
                      context.read<TasksViewCubit>().toggle();
                    },
                    child: Text(
                      'All Tasks',
                      style: ClsAppStyles.font20SemiBold,
                    ),
                  ),
                ],
              ),
              verticalSpace(6),
              if (!showAllTasks) ...[
                CustomBuildAddDate(),
                verticalSpace(20),
                BuildTaskOrNoTask(),
              ],
              if (showAllTasks) ...[BuildAllTask()],
            ],
          );
        },
      ),
    );
  }
}
