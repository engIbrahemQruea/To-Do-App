import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState.initial() = _Initial;
  const factory HomeScreenState.getAllTaskLoading() = GetAllTaskLoading;
  const factory HomeScreenState.getAllTaskSuccess(
    List<EntityTask> entityTasks,
  ) = GetAllTaskSuccess;
  const factory HomeScreenState.getAllTaskFailure() = GetAllTaskFailure;

}
