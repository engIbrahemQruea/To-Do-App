import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

ThemeData getTheme() {
  return ThemeData(
    primaryColor: ClsAppColors.buttonColor,
    scaffoldBackgroundColor: ClsAppColors.primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: ClsAppColors.primaryColor,
      elevation: 0,
      centerTitle: true,
    ),
  );
}
