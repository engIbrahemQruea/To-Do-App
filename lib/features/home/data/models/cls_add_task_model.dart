import 'dart:convert';

import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';

class AddTaskModel extends EntityTask {
  AddTaskModel({
    required super.id,
    required super.title,
    required super.note,
    required super.isCompleted,
    required super.date,
    required super.startTime,
    required super.endTime,
    required super.color,
  });


  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'note': note,
      'isCompleted': isCompleted,
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'color': color,
    };
  }

  factory AddTaskModel.fromMap(Map<String, dynamic> map) {
    return AddTaskModel(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] as String,
      note: map['note'] as String,
      isCompleted: map['isCompleted'] as int,
      date: map['date'] as String,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      color: map['color'] as int,
    );
  }

 // String toJson() => json.encode(toMap());

  factory AddTaskModel.fromJson(String source) => AddTaskModel.fromMap(json.decode(source) as Map<String, dynamic>);


}

// class ClsAddTaskModel {
//   final int? id;
//   final String title;
//   final String? note;
//   final int? isCompleted;
//   final String? date;
//   final String? startTime;
//   final String? endTime;
//   final int? color;

//   ClsAddTaskModel({
//     this.id,
//     required this.title,
//     this.note,
//     this.isCompleted,
//     this.date,
//     this.startTime,
//     this.endTime,
//     this.color,
//   });

//   Map<String, dynamic> toJson() {
//     return <String, dynamic>{
//       'id': id,
//       'title': title,
//       'note': note,
//       'isCompleted': isCompleted,
//       'date': date,
//       'startTime': startTime,
//       'endTime': endTime,
//       'color': color,
//     };
//   }

//   factory ClsAddTaskModel.fromMap(Map<String, dynamic> map) {
//     return ClsAddTaskModel(
//       id: map['id'] != null ? map['id'] as int : null,
//       title: map['title'] as String,
//       note: map['note'] != null ? map['note'] as String : null,
//       isCompleted: map['isCompleted'] != null
//           ? map['isCompleted'] as int
//           : null,
//       date: map['date'] != null ? map['date'] as String : null,
//       startTime: map['startTime'] != null ? map['startTime'] as String : null,
//       endTime: map['endTime'] != null ? map['endTime'] as String : null,
//       color: map['color'] != null ? map['color'] as int : null,
//     );
//   }

//   //String toJson() => json.encode(toMap());

//   factory ClsAddTaskModel.fromJson(String source) =>
//       ClsAddTaskModel.fromMap(json.decode(source) as Map<String, dynamic>);
// }

// class ClsAddTaskModelTest {
//   final int? id;
//   final String title;
//   final String note;
//   final int? isCompleted;
//   final String? date;
//   final String? startTime;
//   final String? endTime;
//   final int? color;

//   ClsAddTaskModelTest({
//     this.id,
//     required this.title,
//     required this.note,
//     this.isCompleted,
//     this.date,
//     this.startTime,
//     this.endTime,
//     this.color,
//   });

//   static List<ClsAddTaskModelTest> taskListTesting = [
//     // ClsAddTaskModelTest(
//     //   id: 1,
//     //   title: 'title',
//     //   note: 'note,',
//     //   isCompleted: 0,
//     //   date: '22/11/2023',
//     //   startTime: '  12:00 AM',
//     //   endTime: '10:00 PM',
//     //   color: 0,
//     // ),
//     // ClsAddTaskModelTest(
//     //   id: 2,
//     //   title: 'title',
//     //   note: 'note,',
//     //   isCompleted: 1,
//     //   date: '11/11/2023',
//     //   startTime: '9:00 AM',
//     //   endTime: '9:00 PM ',
//     //   color: 1,
//     // ),
//   ];
// }
