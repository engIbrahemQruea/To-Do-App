import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/features/onboarding/ui/widgets/custom_row_button.dart';
import 'package:to_do_app/features/onboarding/ui/widgets/page_view_builder.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        verticalSpace(50),
        PageViewBuilder(),
        // verticalSpace(90),
        // CustomRowButton(),
        // verticalSpace(62),
      ],
    );
  }
}
