// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/di/dependency_injection.dart';

import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/update_delete_task/update_delete_task_cubit.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/build_container_body.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/custom_build_show_bottom_sheet.dart';

import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';

class CustomBuildTask extends StatelessWidget {
  const CustomBuildTask({Key? key, required this.entityTask}) : super(key: key);
  final List<EntityTask> entityTask;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      child: ListView.separated(
        itemCount: entityTask.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              final parentContext = context;
              showModalBottomSheet(
                context: parentContext,
                isDismissible: false,
                isScrollControlled: true,
                builder: (BuildContext bottomSheetContext) {
                  return MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (bottosmSheetContext) =>
                            UpdateDeleteTaskCubit(getIt(), getIt()),
                      ),
                      BlocProvider.value(
                        value: parentContext.read<HomeScreenCubit>(),
                      ),
                      BlocProvider.value(
                        value: parentContext.read<GetAllTaskByDateCubit>(),
                      ),
                    ],
                    child: CustomShowModalBottomSheet(
                      customContext: bottomSheetContext,
                      index: entityTask[index].id!,
                      isCompleted: entityTask[index].isCompleted,
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 150.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: context.read<AddTaskCubit>().getColor(
                  entityTask[index].color,
                ),
              ),
              child: BuildContainerBody(taskModelTest: entityTask[index]),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return verticalSpace(10);
        },
      ),
    );
  }
}
