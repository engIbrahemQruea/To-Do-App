import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/routing/app_router.dart';
import 'package:to_do_app/core/theming/theme.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/language_cubir/switch_language_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/theme_cubit/switch_theme_cubit.dart';
import 'package:to_do_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class ThemeAndLanguageWrapper extends StatelessWidget {
  const ThemeAndLanguageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // BlocBuilder للسمة (Theme)
    return BlocBuilder<SwitchThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        // 1. تطبيق SystemUIOverlayStyle
        _setSystemUIOverlay(themeMode);

        // BlocBuilder للغة (Locale)
        return BlocBuilder<SwitchLanguageCubit, Locale>(
          builder: (context, locale) {
            // 2. بناء MaterialApp مع القيم المحدثة
            return MaterialApp.router(
              routerConfig: AppRouter.router,
              locale: locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: 'To-Do App',
              themeMode: themeMode,
              theme: lightTheme,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }

  void _setSystemUIOverlay(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      themeMode == ThemeMode.dark
          ? SystemUiOverlayStyle.light.copyWith(
              statusBarColor: Colors.transparent,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              statusBarColor: Colors.transparent,
            ),
    );
  }
}