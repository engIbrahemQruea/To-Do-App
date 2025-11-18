import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/helpers/constants_shared_pref_keys.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';
import 'package:to_do_app/core/theming/font_weight_helper.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class ClsAppStyles {
  static TextStyle get font40Bold => TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.bold,
    color: checkThemModeInSharedPrefHelper(),

    //fontFamily: GoogleFonts.lato().fontFamily,
  );
  static TextStyle get font20SemiBold => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: checkThemModeInSharedPrefHelper(),

    //fontFamily: GoogleFonts.lato().fontFamily,
  );
  static TextStyle get font32Bold => TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: checkThemModeInSharedPrefHelper(),
  );

  static TextStyle get font16WithOpcityRegular => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: SharedPrefHelper.getString(SharedPrefKeys.appThemeMode) == 'dark'
        ? ClsAppColors.white.withOpacity(.44)
        : ClsAppColors.primaryColor,
  );
  static TextStyle get font16Regular => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: SharedPrefHelper.getString(SharedPrefKeys.appThemeMode) == 'dark'
        ? ClsAppColors.white
        : ClsAppColors.primaryColor,
  );

  static TextStyle get font16Bold => TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: checkThemModeInSharedPrefHelper(),
  );

  static TextStyle get font24Bold => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: checkThemModeInSharedPrefHelper(),
  );

  static TextStyle get font20Regular => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: ClsAppColors.white,
  );
  static TextStyle get font20RegularNoTask => TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.regular,
    color: checkThemModeInSharedPrefHelper(),
  );
}

Color checkThemModeInSharedPrefHelper() {
  return SharedPrefHelper.getString(SharedPrefKeys.appThemeMode) == 'dark'
      ? ClsAppColors.white
      : ClsAppColors.primaryColor;
}
