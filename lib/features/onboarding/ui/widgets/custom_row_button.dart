// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/helpers/constants_shared_pref_keys.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';
import 'package:to_do_app/core/routing/app_route_name.dart';

import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_colors.dart';
import 'package:to_do_app/core/widgets/app_text_button.dart';
import 'package:to_do_app/features/onboarding/data/models/cls_onboarding_model.dart';

class CustomRowButton extends StatelessWidget {
  const CustomRowButton({Key? key, required this.indexButton})
    : super(key: key);
  final int indexButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        indexButton != 0
            ? AppTextButton(
                buttonText: 'BACK',
                backgroundColor: ClsAppColors.primaryColor,
                buttonWidth: 90.w,
                buttonHeight: 55.h,
                textStyle: ClsAppStyles.font16Bold,
                onPressed: () {
                  ClsOnboardingModel.controllerPage.previousPage(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeIn,
                  );
                },
              )
            : Container(),
        const Spacer(),
        indexButton != 2
            ? AppTextButton(
                buttonText: 'NEXT',
                backgroundColor: ClsAppColors.buttonColor,
                buttonWidth: 90.w,
                buttonHeight: 55.h,
                textStyle: ClsAppStyles.font16Bold,
                onPressed: () {
                  ClsOnboardingModel.controllerPage.nextPage(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                  );
                },
              )
            : AppTextButton(
                buttonText: 'Start',
                backgroundColor: ClsAppColors.buttonColor,
                buttonWidth: 130.w,
                buttonHeight: 55.h,
                textStyle: ClsAppStyles.font16Bold,
                onPressed: () {
                  SharedPrefHelper.setData(SharedPrefKeys.kOnboarding, true);
                  context.goNamed(ClsAppRouteName.homeScreen);
                },
              ),
      ],
    );
  }
}
