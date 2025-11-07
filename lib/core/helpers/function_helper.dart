import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  return '$hour:$minute';
}
