// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ToDo`
  String get logo_name_splash {
    return Intl.message('ToDo', name: 'logo_name_splash', desc: '', args: []);
  }

  /// `Prog/ Ibrahem Qrueai\n773635382`
  String get name_prog_splash {
    return Intl.message(
      'Prog/ Ibrahem Qrueai\n773635382',
      name: 'name_prog_splash',
      desc: '',
      args: [],
    );
  }

  /// `Manage your tasks`
  String get title_onboarding_one_screen {
    return Intl.message(
      'Manage your tasks',
      name: 'title_onboarding_one_screen',
      desc: '',
      args: [],
    );
  }

  /// `You can easily manage all of your daily tasks in DoMe for free`
  String get subtitle_onboarding_one_screen {
    return Intl.message(
      'You can easily manage all of your daily tasks in DoMe for free',
      name: 'subtitle_onboarding_one_screen',
      desc: '',
      args: [],
    );
  }

  /// `Create daily routine`
  String get title_onboarding_tow_screen {
    return Intl.message(
      'Create daily routine',
      name: 'title_onboarding_tow_screen',
      desc: '',
      args: [],
    );
  }

  /// `In Uptodo  you can create your\n personalized routine to stay productive`
  String get subtitle_onboarding_tow_screen {
    return Intl.message(
      'In Uptodo  you can create your\n personalized routine to stay productive',
      name: 'subtitle_onboarding_tow_screen',
      desc: '',
      args: [],
    );
  }

  /// `Organaize your tasks`
  String get title_onboarding_three_screen {
    return Intl.message(
      'Organaize your tasks',
      name: 'title_onboarding_three_screen',
      desc: '',
      args: [],
    );
  }

  /// `You can organize your daily tasks by\n adding your tasks into separate categories`
  String get subtitle_onboarding_three_screen {
    return Intl.message(
      'You can organize your daily tasks by\n adding your tasks into separate categories',
      name: 'subtitle_onboarding_three_screen',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get btn_next_onboarding_screen {
    return Intl.message(
      'Next',
      name: 'btn_next_onboarding_screen',
      desc: '',
      args: [],
    );
  }

  /// `back`
  String get btn_back_onboarding_screen {
    return Intl.message(
      'back',
      name: 'btn_back_onboarding_screen',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get btn_get_started_onboarding_screen {
    return Intl.message(
      'Get Started',
      name: 'btn_get_started_onboarding_screen',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get btn_add_task_home_screen {
    return Intl.message(
      'Add Task',
      name: 'btn_add_task_home_screen',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get to_day_home_screen {
    return Intl.message(
      'Today',
      name: 'to_day_home_screen',
      desc: '',
      args: [],
    );
  }

  /// `All Tasks`
  String get btn_all_tasks_home_screen {
    return Intl.message(
      'All Tasks',
      name: 'btn_all_tasks_home_screen',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get rotateBox_completed_home {
    return Intl.message(
      'Completed',
      name: 'rotateBox_completed_home',
      desc: '',
      args: [],
    );
  }

  /// `TODO`
  String get rotateBox_todo_home {
    return Intl.message(
      'TODO',
      name: 'rotateBox_todo_home',
      desc: '',
      args: [],
    );
  }

  /// `Task Completed`
  String get btn_sheet_completed_home_screen {
    return Intl.message(
      'Task Completed',
      name: 'btn_sheet_completed_home_screen',
      desc: '',
      args: [],
    );
  }

  /// `Delete Completed`
  String get btn_sheet_delete_home_screen {
    return Intl.message(
      'Delete Completed',
      name: 'btn_sheet_delete_home_screen',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get btn_sheet_cancel_home_screen {
    return Intl.message(
      'Cancel',
      name: 'btn_sheet_cancel_home_screen',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this task?`
  String get message_alert_confirm_delete_task {
    return Intl.message(
      'Are you sure you want to delete this task?',
      name: 'message_alert_confirm_delete_task',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get btn_alert_cancel_task {
    return Intl.message(
      'Cancel',
      name: 'btn_alert_cancel_task',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get btn_alert_delete_task {
    return Intl.message(
      'Delete',
      name: 'btn_alert_delete_task',
      desc: '',
      args: [],
    );
  }

  /// `Complete task successfully`
  String get show_toast_complete_task {
    return Intl.message(
      'Complete task successfully',
      name: 'show_toast_complete_task',
      desc: '',
      args: [],
    );
  }

  /// `Delete task successfully`
  String get show_toast_delete_task {
    return Intl.message(
      'Delete task successfully',
      name: 'show_toast_delete_task',
      desc: '',
      args: [],
    );
  }

  /// `Add task successfully`
  String get show_toast_add_task {
    return Intl.message(
      'Add task successfully',
      name: 'show_toast_add_task',
      desc: '',
      args: [],
    );
  }

  /// `What do you want to do today?`
  String get no_tasks_text_one {
    return Intl.message(
      'What do you want to do today?',
      name: 'no_tasks_text_one',
      desc: '',
      args: [],
    );
  }

  /// `Tap + to add your tasks`
  String get no_tasks_text_tow {
    return Intl.message(
      'Tap + to add your tasks',
      name: 'no_tasks_text_tow',
      desc: '',
      args: [],
    );
  }

  /// `Add Task`
  String get app_bar_title_add_task_screen {
    return Intl.message(
      'Add Task',
      name: 'app_bar_title_add_task_screen',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get repeatNone {
    return Intl.message('None', name: 'repeatNone', desc: '', args: []);
  }

  /// `Daily`
  String get repeatDaily {
    return Intl.message('Daily', name: 'repeatDaily', desc: '', args: []);
  }

  /// `Weekly`
  String get repeatWeekly {
    return Intl.message('Weekly', name: 'repeatWeekly', desc: '', args: []);
  }

  /// `Monthly`
  String get repeatMonthly {
    return Intl.message('Monthly', name: 'repeatMonthly', desc: '', args: []);
  }

  /// `Title Task`
  String get from_field_text_title {
    return Intl.message(
      'Title Task',
      name: 'from_field_text_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter Title Task here`
  String get from_field_hint_text {
    return Intl.message(
      'Enter Title Task here',
      name: 'from_field_hint_text',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter title Task here`
  String get from_field_validate_text {
    return Intl.message(
      'Please Enter title Task here',
      name: 'from_field_validate_text',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get from_field_text_note {
    return Intl.message(
      'Note',
      name: 'from_field_text_note',
      desc: '',
      args: [],
    );
  }

  /// `Enter Note  here`
  String get from_field_hint_note {
    return Intl.message(
      'Enter Note  here',
      name: 'from_field_hint_note',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter Note here`
  String get from_field_validate_note {
    return Intl.message(
      'Please Enter Note here',
      name: 'from_field_validate_note',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get from_field_text_date {
    return Intl.message(
      'Date',
      name: 'from_field_text_date',
      desc: '',
      args: [],
    );
  }

  /// `Start Time`
  String get from_field_text_start_time {
    return Intl.message(
      'Start Time',
      name: 'from_field_text_start_time',
      desc: '',
      args: [],
    );
  }

  /// `End Time`
  String get from_field_text_end_time {
    return Intl.message(
      'End Time',
      name: 'from_field_text_end_time',
      desc: '',
      args: [],
    );
  }

  /// `Remind`
  String get from_field_text_remind {
    return Intl.message(
      'Remind',
      name: 'from_field_text_remind',
      desc: '',
      args: [],
    );
  }

  /// `Repeat`
  String get from_field_text_repeat {
    return Intl.message(
      'Repeat',
      name: 'from_field_text_repeat',
      desc: '',
      args: [],
    );
  }

  /// `Color`
  String get color_text_title {
    return Intl.message('Color', name: 'color_text_title', desc: '', args: []);
  }

  /// `Create Task`
  String get btn_create_task {
    return Intl.message(
      'Create Task',
      name: 'btn_create_task',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
