import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/features/onboarding/data/models/cls_onboarding_model.dart';
import 'package:to_do_app/features/onboarding/ui/widgets/custom_row_button.dart';
import 'package:to_do_app/features/onboarding/ui/widgets/custom_smooth_page_indicator.dart';

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        itemCount: 3,
        controller: ClsOnboardingModel.controllerPage,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(
                ClsOnboardingModel.getOnBoardingList(context)[index].image,
                height: 300.h,
                width: 300.w,
              ),
              verticalSpace(16),
              CustomSmoothPageIndicator(
                controller: ClsOnboardingModel.controllerPage,
              ),
              verticalSpace(42),
              Text(
                ClsOnboardingModel.getOnBoardingList(context)[index].title,
                style: ClsAppStyles.font32Bold,
              ),
              verticalSpace(35),
              Text(
                ClsOnboardingModel.getOnBoardingList(context)[index].subTitle,
                style: ClsAppStyles.font16WithOpcityRegular,
                textAlign: TextAlign.center,
              ),
              verticalSpace(90),
              CustomRowButton(indexButton: index),
              verticalSpace(62),
            ],
          );
        },
      ),
    );
  }
}
