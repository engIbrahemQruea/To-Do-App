import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/constants_shared_pref_keys.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/language_cubir/switch_language_cubit.dart';

class CustomSwitchLanguage extends StatelessWidget {
  const CustomSwitchLanguage({
    required this.localeMode,
    required this.isArb,
    super.key,
  });
  final localeMode;
  final isArb;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isArb,
      activeColor:
          SharedPrefHelper.getString(SharedPrefKeys.appThemeMode) == 'dark'
          ? Colors.white
          : Colors.black,
      onChanged: (_) {
        context.read<SwitchLanguageCubit>().changeLanguage();
      },
    );
  }
}
