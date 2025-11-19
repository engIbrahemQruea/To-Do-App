import 'package:dartz/dartz.dart';
import 'package:to_do_app/core/error/failure.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/features/home/domain/repos/add_task_repos.dart';

class InsertTaskUseCase {
  final AddTaskRepos _addTaskRepos;
  InsertTaskUseCase(this._addTaskRepos);
  Future<Either<Failure, Unit>> call(EntityTask entityTask) async {
    return await _addTaskRepos.insertTask(entityTask);
  }
}
