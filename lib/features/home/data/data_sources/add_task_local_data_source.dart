// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:dartz/dartz.dart';

import 'package:to_do_app/core/service/sqf_lite_data_base.dart';
import 'package:to_do_app/features/home/data/models/cls_add_task_model.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';

abstract class AddTaskLocalDataSource {
  Future<Unit> addTaskLocal(AddTaskModel addTaskModel);
  Future<List<EntityTask>> getAllTaskLocal();
  Future<int> updateTaskLocal(int id);
  Future<int> deleteTaskLocal(int id);
  Future<List<EntityTask>> getAllTaskByDateLocal(String date);
}

class AddTaskLocalDataSourceImpl implements AddTaskLocalDataSource {
  final SqfLiteDatabase sqfLiteDatabase;
  AddTaskLocalDataSourceImpl({required this.sqfLiteDatabase});
  @override
  Future<Unit> addTaskLocal(AddTaskModel addTaskModel) {
    sqfLiteDatabase.insertTaskDatabase(addTaskModel);
    log('addTasks in AddTaskLocalDataSourceImpl');

    return Future.value(unit);
  }

  @override
  Future<List<AddTaskModel>> getAllTaskLocal() async {
    var response = await sqfLiteDatabase.getAllTasksFromDatabase();
    final tasks = response.map((e) => AddTaskModel.fromMap(e)).toList();

    log('queryAllTasks in AddTaskLocalDataSourceImpl');
    return tasks;
  }

  @override
  Future<int> updateTaskLocal(int id) async {
    final response = await sqfLiteDatabase.updateTaskToDatabase(id);

    log('updateTaskToDatabase in AddTaskLocalDataSourceImpl');
    return response;
  }

  @override
  Future<int> deleteTaskLocal(int id) async {
    final response = await sqfLiteDatabase.deleteTaskToDatabase(id);
    log('deleteTaskToDatabase in AddTaskLocalDataSourceImpl');

    return response;
  }
  
  @override
  Future<List<AddTaskModel>> getAllTaskByDateLocal(String date)async {
final response=await sqfLiteDatabase.getAllTaskByDate(date);
final tasks=response.map((e) => AddTaskModel.fromMap(e)).toList();
    return tasks;
  }
}
