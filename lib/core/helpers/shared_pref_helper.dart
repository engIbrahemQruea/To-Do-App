import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPrefHelper._();

  static late SharedPreferences _prefs;

  static Future<void> init() async {
    debugPrint('SharedPrefHelper: Initializing SharedPreferences...');
    _prefs = await SharedPreferences.getInstance();
    debugPrint('SharedPrefHelper: Initialization complete ✅');
  }

  static Future<void> setData(String key, dynamic value) async {
    debugPrint("SharedPrefHelper: setData key=$key, value=$value");

    if (value is String) await _prefs.setString(key, value);
    else if (value is int) await _prefs.setInt(key, value);
    else if (value is bool) await _prefs.setBool(key, value);
    else if (value is double) await _prefs.setDouble(key, value);
    else {
      debugPrint("SharedPrefHelper: ❌ Unsupported value type for key=$key");
    }
  }

  static String getString(String key, {String defaultValue = ''}) {
    final value = _prefs.getString(key) ?? defaultValue;
    debugPrint("SharedPrefHelper: getString key=$key => $value");
    return value;
  }

  static int getInt(String key, {int defaultValue = 0}) {
    final value = _prefs.getInt(key) ?? defaultValue;
    debugPrint("SharedPrefHelper: getInt key=$key => $value");
    return value;
  }

  static bool getBool(String key, {bool defaultValue = false}) {
    final value = _prefs.getBool(key) ?? defaultValue;
    debugPrint("SharedPrefHelper: getBool key=$key => $value");
    return value;
  }

  static double getDouble(String key, {double defaultValue = 0.0}) {
    final value = _prefs.getDouble(key) ?? defaultValue;
    debugPrint("SharedPrefHelper: getDouble key=$key => $value");
    return value;
  }

  static Future<void> removeData(String key) async {
    debugPrint("SharedPrefHelper: removeData key=$key");
    await _prefs.remove(key);
  }

  static Future<void> clearAllData() async {
    debugPrint("SharedPrefHelper: clearAllData");
    await _prefs.clear();
  }
}
