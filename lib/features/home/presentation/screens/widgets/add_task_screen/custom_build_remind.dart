import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';
import 'package:to_do_app/generated/l10n.dart';

class CustomBuildRemind extends StatelessWidget {
  const CustomBuildRemind({super.key, required this.remindList});

  final List<int> remindList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).from_field_text_remind, style: ClsAppStyles.font16Bold),
        verticalSpace(5),

        AppTextFormField(
          hintText: 'Title',
          readOnly: true,
          suffixIcon: DropdownButton(
            items: remindList
                .map(
                  (value) =>
                      DropdownMenuItem(value: value, child: Text('$value')),
                )
                .toList(),
            borderRadius: BorderRadius.circular(10.r),

            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 32.r,
              color: checkThemModeInSharedPrefHelper(),
            ),
            elevation: 4,
            onChanged: (newValue) {},
          ),
          validator: (_) {},
        ),
      ],
    );
  }
}
