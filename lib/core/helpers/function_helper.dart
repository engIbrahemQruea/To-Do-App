import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/core/utils/app_colors.dart';

String formatDate(DateTime? dateTime) {
  if (dateTime == null) {
    return 'Select Date';
  }
  final formatter = DateFormat('yyyy-MM-dd');
  return formatter.format(dateTime);
}

String formatTimeOfDay(TimeOfDay? timeOfDay) {
  if (timeOfDay == null) {
    return 'Select Time';
  }
  final hour = timeOfDay.hourOfPeriod.toString().padLeft(2, '0');
  final minute = timeOfDay.minute.toString().padLeft(2, '0');
  final period = timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';
  return '$hour:$minute $period';
}

void showToast({required String message, required ToastStates state}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,
    backgroundColor: getState(state),
    textColor: Colors.white,
    fontSize: 16.0,
  );
}

enum ToastStates { error, success, warining }

Color getState(ToastStates state) {
  switch (state) {
    case ToastStates.error:
      return Colors.red;
    case ToastStates.success:
      return Colors.green;
    case ToastStates.warining:
      return Colors.yellow;
  }
}
