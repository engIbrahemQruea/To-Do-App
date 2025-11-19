import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/core/helpers/constants_shared_pref_keys.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/routing/app_route_name.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/core/utils/app_assets.dart';
import 'package:to_do_app/generated/l10n.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isVisible = SharedPrefHelper.getBool(SharedPrefKeys.kOnboarding);
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      context.go(isVisible?ClsAppRouteName.homeScreen:ClsAppRouteName.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ClsAppAssets.logoImage, width: 95.w, height: 80.h),
              Text(S.of(context).logo_name_splash, style: ClsAppStyles.font40Bold),
              verticalSpace(20),
              Text(
                S.of(context).name_prog_splash,
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
