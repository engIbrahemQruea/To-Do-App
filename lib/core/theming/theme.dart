import 'package:flutter/material.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

ThemeData getTheme() {
  return ThemeData(
    primaryColor: ClsAppColors.buttonColor,
    scaffoldBackgroundColor: ClsAppColors.primaryColor,
  );
}
