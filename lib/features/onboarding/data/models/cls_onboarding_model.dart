import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_assets.dart';
import 'package:to_do_app/generated/l10n.dart';

class ClsOnboardingModel {
  final String image;
  final String title;
  final String subTitle;
  static final PageController controllerPage = PageController();

  ClsOnboardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  // static List<ClsOnboardingModel> onBoardingList = [
  //   ClsOnboardingModel(
  //     image: ClsAppAssets.onBoardingOneImage,
  //     title: 'Manage your tasks',
  //     subTitle:
  //         'You can easily manage all of your daily tasks in DoMe for free',
  //   ),
  //   ClsOnboardingModel(
  //     image: ClsAppAssets.onBoardingTwoImage,
  //     title: 'Create daily routine',
  //     subTitle:
  //         'In Uptodo  you can create your\n personalized routine to stay productive',
  //   ),
  //   ClsOnboardingModel(
  //     image: ClsAppAssets.onBoardingThreeImage,
  //     title: 'Organaize your tasks',
  //     subTitle:
  //         'You can organize your daily tasks by\n adding your tasks into separate categories',
  //   ),
  // ];
  
 static List<ClsOnboardingModel> getOnBoardingList(BuildContext context) {
  final t = S.of(context);

  return [
    ClsOnboardingModel(
      image: ClsAppAssets.onBoardingOneImage,
      title: t.title_onboarding_one_screen,
      subTitle: t.subtitle_onboarding_one_screen,
    ),
    ClsOnboardingModel(
      image: ClsAppAssets.onBoardingTwoImage,
      title: t.title_onboarding_tow_screen,
      subTitle: t.subtitle_onboarding_tow_screen,
    ),
    ClsOnboardingModel(
      image: ClsAppAssets.onBoardingThreeImage,
      title: t.title_onboarding_three_screen,
      subTitle: t.subtitle_onboarding_three_screen,
    ),
  ];
}

}
