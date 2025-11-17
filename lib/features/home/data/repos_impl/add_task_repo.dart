import 'package:dartz/dartz.dart';
import 'package:to_do_app/core/error/failure.dart';
import 'package:to_do_app/features/home/data/data_sources/add_task_local_data_source.dart';
import 'package:to_do_app/features/home/data/models/cls_add_task_model.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/features/home/domain/repos/add_task_repos.dart';

class AddTaskRepoImpl implements AddTaskRepos {
  final AddTaskLocalDataSource _addTaskLocalDataSource;
  AddTaskRepoImpl(this._addTaskLocalDataSource);
  @override
  Future<Either<Failure, Unit>> insertTask(EntityTask entityTask) async {
    final AddTaskModel addTaskModel = AddTaskModel(
      id: entityTask.id,
      title: entityTask.title,
      note: entityTask.note,
      date: entityTask.date,
      startTime: entityTask.startTime,
      endTime: entityTask.endTime,
      color: entityTask.color,
      isCompleted: entityTask.isCompleted,
    );
    try {
      await _addTaskLocalDataSource.addTaskLocal(addTaskModel);
      return right(unit);
    } catch (e) {
      print(e);
      return left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<EntityTask>>> getAllTask() async {
    try {
      final response = await _addTaskLocalDataSource.getAllTaskLocal();
      return right(response);
    } on Exception catch (e) {
      print(e);
      return left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<EntityTask>>> getAllTaskByDate(String date)async {
    try {
      final response = await _addTaskLocalDataSource.getAllTaskByDateLocal(date);
      return right(response);
    } on Exception catch (e) {
      print(e);
      return left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, int>> deleteTask(int id) async {
    try {
      final response = await _addTaskLocalDataSource.deleteTaskLocal(id);
      return right(response);
    } catch (e) {
      return left(DatabaseFailure());
    }
  }

  @override
  Future<Either<Failure, int>> updateTask(int id) async {
    try {
      final response = await _addTaskLocalDataSource.updateTaskLocal(id);

      return right(response);
    } catch (e) {
      print(e);
      return left(DatabaseFailure());
    }
  }
  

}
