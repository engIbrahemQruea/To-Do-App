import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_assets.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClsAppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ClsAppAssets.logoImage, width: 95.w, height: 80.h),
              Text('UpTodo', style: ClsAppStyles.font40Bold),
              verticalSpace(20),
              Text(
                'Prog/Ibrahem Qrueai\n773635382',
                textAlign: TextAlign.center,
                style: ClsAppStyles.font20SemiBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
