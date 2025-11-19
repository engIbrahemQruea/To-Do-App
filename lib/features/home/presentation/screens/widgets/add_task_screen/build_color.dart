import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/generated/l10n.dart';

class BuildColor extends StatelessWidget {
  const BuildColor({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<AddTaskCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).color_text_title, style: ClsAppStyles.font16Bold),
        verticalSpace(5),
        Wrap(
          children: List<Widget>.generate(
            6,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                borderRadius: BorderRadius.circular(24),
                onTap: () {
                  cubit.emitChangeColorIndex(index);
                },
                child: CircleAvatar(
                  backgroundColor: cubit.getColor(index),
                  child: index == cubit.currentIndex
                      ? Icon(Icons.done, size: 32.r, color: Colors.white)
                      : null,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
