import 'package:dartz/dartz.dart';
import 'package:to_do_app/core/error/failure.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/features/home/domain/repos/add_task_repos.dart';

class GetAllTaskByDateUseCase {
  final AddTaskRepos _addTaskRepos;
  GetAllTaskByDateUseCase(this._addTaskRepos);

  Future<Either<Failure, List<EntityTask>>> call(String date) async {
    return await _addTaskRepos.getAllTaskByDate(date);
  }
}
