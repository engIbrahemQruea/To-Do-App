import 'package:dartz/dartz.dart';
import 'package:to_do_app/core/error/failure.dart';
import 'package:to_do_app/features/home/domain/repos/add_task_repos.dart';

class DeleteTaskUseCase {
  final AddTaskRepos _addTaskRepos;
  DeleteTaskUseCase(this._addTaskRepos);

  Future<Either<Failure, int>> call(int id) async {
    return await _addTaskRepos.deleteTask(id);
  }
}
