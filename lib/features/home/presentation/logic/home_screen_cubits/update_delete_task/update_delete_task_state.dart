
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_delete_task_state.freezed.dart';
@freezed
class UpdateDeleteTaskState with _$UpdateDeleteTaskState {
  const factory UpdateDeleteTaskState.initial() = _Initial;
  const factory UpdateDeleteTaskState.updateTaskLoading() = UpdateTaskLoading;
  const factory UpdateDeleteTaskState.updateTaskSuccess() = UpdateTaskSuccess;
  const factory UpdateDeleteTaskState.updateTaskFailure() = UpdateTaskFailure;
  
  const factory UpdateDeleteTaskState.deleteTaskLoading() = DeleteTaskLoading;
  const factory UpdateDeleteTaskState.deleteTaskSuccess() = DeleteTaskSuccess;
  const factory UpdateDeleteTaskState.deleteTaskFailure() = DeleteTaskFailure;


}
