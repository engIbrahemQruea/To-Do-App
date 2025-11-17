
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_form_field.dart';

class CustomBuildRepeat extends StatelessWidget {
  const CustomBuildRepeat({
    super.key,
    required this.repeatList,
  });

  final List<String> repeatList;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Repeat', style: ClsAppStyles.font16Regular),
        verticalSpace(5),
        AppTextFormField(
          hintText: 'Title',
          readOnly: true,
          suffixIcon: DropdownButton(
            borderRadius: BorderRadius.circular(10.r),
            items: repeatList
                .map(
                  (value) =>
                      DropdownMenuItem(value: value, child: Text('$value')),
                )
                .toList(),
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: ClsAppColors.white,
              size: 32.r,
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
