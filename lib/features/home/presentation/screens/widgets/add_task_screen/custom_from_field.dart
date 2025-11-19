import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/generated/l10n.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AddTaskCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).from_field_text_title,
            style: ClsAppStyles.font16Bold,
          ),
          verticalSpace(5),

          AppTextFormField(
            hintText: S.of(context).from_field_hint_text,
            controller: context.read<AddTaskCubit>().titleController,
            validator: (value) {
              if (value!.isEmpty) {
                return S.of(context).from_field_validate_text;
              }
            },
          ),
          verticalSpace(10),

          Text(S.of(context).from_field_text_note, style: ClsAppStyles.font16Bold),
          verticalSpace(5),

          AppTextFormField(
            hintText: S.of(context).from_field_hint_note,
            controller: context.read<AddTaskCubit>().noteController,
            validator: (value) {
              if (value!.isEmpty) {
                return S.of(context).from_field_validate_note;
              }
            },
          ),
        ],
      ),
    );
  }
}
