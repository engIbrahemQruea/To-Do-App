import 'dart:developer';

import 'package:sqflite/sqflite.dart';
import 'package:to_do_app/features/home/data/models/cls_add_task_model.dart';

class SqfLiteDatabase {
  static Database? database;
  static final int _version = 1;
  static final String _tableName = 'tasks';

  static Future<void> initDatabase() async {
    log('initial database ');

    if (database != null) {
      log('data base null');

      return;
    } else {
      try {
        String _path = await getDatabasesPath() + 'task.db';
        database = await openDatabase(
          _path,

          version: _version,
          onCreate: (Database db, int version) async {
            await db.execute(
              'CREATE TABLE $_tableName (id INTEGER PRIMARY KEY AUTOINCREMENT,title STRING, note TEXT,date STRING,startTime STRING,endTime STRING, color INTEGER, isCompleted INTEGER)',
            );
            log('create table');
          },
        );
      } catch (e) {
        log(e.toString());
      }
    }
  }

  Future<int> insertTaskDatabase(AddTaskModel task) async {
    final id = await database!.insert(_tableName, task.toJson());
    log('Task Inserted with ID: $id');
    return id;
  }

  Future<int> updateTaskToDatabase(int id) async {
    log('updateTaskToDatabase updateTaskToDatabase updateTaskToDatabase');
    return await database!.rawUpdate(
      '''
UPDATE tasks
SET isCompleted = ?
WHERE id = ?
''',
      [1, id],
    );
  }

  Future<int> deleteTaskToDatabase(int id) async {
    log('deleteTaskToDatabase');
    return await database!.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getAllTasksFromDatabase() async {
    log('queryAllTaskInDatabase');
    final response = await database!.rawQuery(
      'SELECT * FROM $_tableName ORDER BY id DESC',
    );
    // for (var row in response) {
    //   log("ROW => $row");
    // }
    return response;
    // return await database!.query(_tableName, orderBy: 'id DESC');
  }

  //get all task by date
  Future<List<Map<String, dynamic>>> getAllTaskByDate(String date) async {

    return await database!.query(
      _tableName,
    where: 'date LIKE ?',
    whereArgs: ["$date%"], 
    orderBy: 'id DESC',
  );
  }
}
