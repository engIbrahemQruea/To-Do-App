import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/helpers/spacing.dart';
import 'package:to_do_app/core/theming/app_style.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/language_cubir/switch_language_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/theme_cubit/switch_theme_cubit.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/custom_switch_language.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/refresh_home_screen.dart';
import 'package:to_do_app/features/home/presentation/screens/widgets/home_screen/icon_button_theme.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final localeMode = context.watch<SwitchLanguageCubit>().state;
    final isArb = localeMode == Locale('ar');
    final mode = context.watch<SwitchThemeCubit>().state;
    final isDark = mode == ThemeMode.dark;
    var format = DateFormat.yMMMMd().format(DateTime.now());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            Row(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(format, style: ClsAppStyles.font24Bold),
                CustomIconButtonTheme(mode: mode, isDark: isDark),
                CustomSwitchLanguage(localeMode: localeMode, isArb: isArb),

              ],
            ),
            verticalSpace(12),
            RefreshHomeScreen(),
          ],
        ),
      ),
    );
  }
}
