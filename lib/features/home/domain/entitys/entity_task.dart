// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class EntityTask {
  final int? id;
  final String title;
  final String note;
  final int isCompleted;
  final String date;
  final String startTime;
  final String endTime;
  final int color;
  // final int remind;
  // final String repeat;

  EntityTask({
    this.id,
    required this.title,
    required this.note,
    required this.isCompleted,
    required this.date,
    required this.startTime,
    required this.endTime,
    required this.color,
    // required this.remind,
    // required this.repeat,
  });
}
