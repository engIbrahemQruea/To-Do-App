import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_state.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/custom_build_task.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/no_tasks.dart';

class BuildAllTask extends StatelessWidget {
  const BuildAllTask({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenCubit, HomeScreenState>(
      // listenWhen: (previous, current) =>
      //     current is GetAllTaskFailure, // هنا لو تريد تعمل SnackBar لاحقًا
      // listener: (context, state) {
      //   state.maybeWhen(
      //     getAllTaskFailure: () {
      //       // مثال: Snackbar
      //       ScaffoldMessenger.of(
      //         context,
      //       ).showSnackBar(SnackBar(content: Text("Failed to load tasks")));
      //     },
      //     orElse: () {},
      //   );
      // },
      buildWhen: (previous, current) =>
          current is GetAllTaskLoading ||
          current is GetAllTaskSuccess ||
          current is GetAllTaskFailure,

      builder: (context, state) {
        return state.maybeWhen(
          getAllTaskLoading: () {
            return const Center(child: CircularProgressIndicator());
          },
          getAllTaskSuccess: (entityTask) {
            return entityTask.isEmpty
                ? const NoTasks()
                : CustomBuildTask(entityTask: entityTask);
          },
          getAllTaskFailure: () {
            return const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}