import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      axisDirection: Axis.horizontal,
      effect: SlideEffect(
        spacing: 10.w,
        radius: 4.r,
        dotWidth: 40.w,
        dotHeight: 10.h,
        paintStyle: PaintingStyle.stroke,
        strokeWidth: 1.5,
        dotColor: ClsAppColors.white,
        activeDotColor: ClsAppColors.buttonColor,
      ),
    );
  }
}
