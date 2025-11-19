import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_state.freezed.dart';

@freezed
class AddTaskState with _$AddTaskState {
  const factory AddTaskState.initial() = _Initial;

  const factory AddTaskState.getDateLoading() = GetDateLoading;
  const factory AddTaskState.getDateSuccess() = GetDateSuccess;
  const factory AddTaskState.getDateFailure() = GetDateFailure;

  const factory AddTaskState.getStartTimeLoading() = GetStartTimeLoading;
  const factory AddTaskState.getStartTimeSuccess() = GetStartTimeSuccess;
  const factory AddTaskState.getStartTimeFailure() = GetStartTimeFailure;

  const factory AddTaskState.getEndTimeLoading() = GetEndTimeLoading;
  const factory AddTaskState.getEndTimeSuccess() = GetEndTimeSuccess;
  const factory AddTaskState.getEndTimeFailure() = GetEndTimeFailure;
  const factory AddTaskState.changeColorIndex() = ChangeColorIndex;
  const factory AddTaskState.getColorIndexChange() = GetColorIndexChange;

  const factory AddTaskState.insertTaskToDatabaseLoading() =
      InsertTaskToDatabaseLoading;
  const factory AddTaskState.insertTaskToDatabaseSuccess() =
      InsertTaskToDatabaseSuccess;
  const factory AddTaskState.insertTaskToDatabaseFailure() =
      InsertTaskToDatabaseFailure;

 // const factory AddTaskState.getSelectedDateLoading() = GetSelectedDateLoading;
  //const factory AddTaskState.getSelectedDateSuccess() = GetSelectedDateSuccess;
}
