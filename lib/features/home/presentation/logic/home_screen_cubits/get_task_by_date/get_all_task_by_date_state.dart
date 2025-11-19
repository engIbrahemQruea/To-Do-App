import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';

part 'get_all_task_by_date_state.freezed.dart';

@freezed
class GetAllTaskByDateState with _$GetAllTaskByDateState {
  const factory GetAllTaskByDateState.initial() = _Initial;

  const factory GetAllTaskByDateState.getAllTaskBySelectedDateLoading() =
      GetAllTaskBySelectedDateLoading;
  const factory GetAllTaskByDateState.getAllTaskBySelectedDateSuccess(
    List<EntityTask> entityTasks,
  ) = GetAllTaskBySelectedDateSuccess;
  const factory GetAllTaskByDateState.getAllTaskBySelectedDateFailure() =
      GetAllTaskBySelectedDateFailure;
}
