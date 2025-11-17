
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddTaskCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title', style: ClsAppStyles.font16Regular),
          verticalSpace(5),

          AppTextFormField(
            hintText: 'Title',
            controller: context.read<AddTaskCubit>().titleController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter title';
              }
            },
          ),
          verticalSpace(10),

          Text('Note', style: ClsAppStyles.font16Regular),
          verticalSpace(5),

          AppTextFormField(
            hintText: 'Enter note here',
            controller: context.read<AddTaskCubit>().noteController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter note';
              }
            },
          ),
        ],
      ),
    );
  }
}
