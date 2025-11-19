import 'package:dartz/dartz.dart';
import 'package:to_do_app/core/error/failure.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/features/home/domain/repos/add_task_repos.dart';

class GetAllTaskUseCase {
  final AddTaskRepos _addTaskRepos;
  GetAllTaskUseCase(this._addTaskRepos);
  Future<Either<Failure, List<EntityTask>>> call() async {
    return await _addTaskRepos.getAllTask();
  }
}
