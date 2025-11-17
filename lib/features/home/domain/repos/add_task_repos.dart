import 'package:dartz/dartz.dart';
import 'package:to_do_app/core/error/failure.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';

abstract class AddTaskRepos {
  Future<Either<Failure, Unit>> insertTask(EntityTask entityTask);
  Future<Either<Failure, List<EntityTask>>> getAllTask();
  Future<Either<Failure, int>> updateTask(int id);
  Future<Either<Failure, int>> deleteTask(int id);
  Future<Either<Failure, List<EntityTask>>> getAllTaskByDate(String date);
}
