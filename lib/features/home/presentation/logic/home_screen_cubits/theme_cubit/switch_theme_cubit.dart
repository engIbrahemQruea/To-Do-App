import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/constants_shared_pref_keys.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';

class SwitchThemeCubit extends Cubit<ThemeMode> {
  SwitchThemeCubit() : super(_loadInitialMode());

  static ThemeMode _loadInitialMode() {
    final value = SharedPrefHelper.getString(SharedPrefKeys.appThemeMode);

    if (value == 'light') return ThemeMode.light;
    if (value == 'dark') return ThemeMode.dark;
    return ThemeMode.system;
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    emit(mode);
    final str = mode == ThemeMode.light
        ? 'light'
        : mode == ThemeMode.dark
        ? 'dark'
        : 'system';
    await SharedPrefHelper.setData(SharedPrefKeys.appThemeMode, str);
  }

  Future<void> toggleDarkLight() async {
    final newMode = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    await setThemeMode(newMode);
  }
}
