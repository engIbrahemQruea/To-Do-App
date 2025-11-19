import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/constants_shared_pref_keys.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';

class SwitchLanguageCubit extends Cubit<Locale> {
  SwitchLanguageCubit() : super(_initLanguage());

  static Locale _initLanguage() {
    final savedCode = SharedPrefHelper.getString(SharedPrefKeys.kAppLanguage);
    if (savedCode == "ar") return Locale("ar");
    if (savedCode == "en") return Locale("en");
    final deviceLocale = WidgetsBinding.instance.platformDispatcher.locale;
    final deviceCode = deviceLocale.languageCode;
    return Locale(deviceCode);
  }

  Future<void> setLocalLanguage(Locale languageMode) async {
    emit(languageMode);
    final str = languageMode == Locale('ar')
        ? 'ar'
        : languageMode == Locale('en')
        ? 'en'
        : 'system';
    await SharedPrefHelper.setData(SharedPrefKeys.kAppLanguage, str);
  }

  Future<void> changeLanguage() async {
    final newLanguage = state == Locale('ar') ? Locale('en') : Locale('ar');
    await setLocalLanguage(newLanguage);
  }
}
