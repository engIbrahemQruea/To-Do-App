import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/core/theming/font_weight_helper.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

class ClsAppStyles{
  static TextStyle font40Bold = TextStyle(
    fontSize: 40,
    fontWeight: FontWeightHelper.bold,
    color: ClsAppColors.white, 
    //fontFamily: GoogleFonts.lato().fontFamily,
  );
  static TextStyle font20SemiBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.semiBold,
    color: ClsAppColors.white, 
    //fontFamily: GoogleFonts.lato().fontFamily,
  );
  static TextStyle font16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font14Regular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeightHelper.regular  ,
  );

  static TextStyle font18BlackBold=TextStyle(
    fontSize: 18,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  

}