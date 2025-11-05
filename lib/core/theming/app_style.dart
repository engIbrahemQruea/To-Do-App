import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/theming/font_weight_helper.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class ClsAppStyles {
  static TextStyle font40Bold = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeightHelper.bold,
    color: ClsAppColors.white,
    //fontFamily: GoogleFonts.lato().fontFamily,
  );
  static TextStyle font20SemiBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ClsAppColors.white,
    //fontFamily: GoogleFonts.lato().fontFamily,
  );
  static TextStyle font32Bold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ClsAppColors.white,
  );

  static TextStyle font16WithOpcityRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ClsAppColors.white.withOpacity(.44),
  );
  static TextStyle font16Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.regular,
    color: ClsAppColors.white,
  );
  static TextStyle font24Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ClsAppColors.white,
  );

  static TextStyle font20Regular = TextStyle(fontSize: 20.sp,
  fontWeight: FontWeightHelper.regular,
  color: ClsAppColors.white,
  
  );
}
