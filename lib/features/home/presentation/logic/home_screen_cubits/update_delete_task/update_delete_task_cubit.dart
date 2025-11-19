// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:to_do_app/features/home/domain/usecases/delete_task.dart';
import 'package:to_do_app/features/home/domain/usecases/up_date_task.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/update_delete_task/update_delete_task_state.dart';

class UpdateDeleteTaskCubit extends Cubit<UpdateDeleteTaskState> {
  final UpDateTaskUseCase upDateTaskUseCase;
  final DeleteTaskUseCase deleteTaskUseCase;
  UpdateDeleteTaskCubit(this.deleteTaskUseCase, this.upDateTaskUseCase)
    : super(UpdateDeleteTaskState.initial());

  void emitUpdateTask(int id) async {
    emit(UpdateDeleteTaskState.updateTaskLoading());
    final response = await upDateTaskUseCase.call(id);
    response.fold(
      (r) {
        emit(UpdateDeleteTaskState.updateTaskSuccess());
      },
      (l) {
        emit(UpdateDeleteTaskState.updateTaskFailure());
      },
    );
  }

  void emitDeleteTask(int id)async {
    emit(UpdateDeleteTaskState.deleteTaskLoading());
        final response = await deleteTaskUseCase.call(id);
    response.fold(
      (r) {
        emit(UpdateDeleteTaskState.deleteTaskSuccess());
      },
      (l) {
        emit(UpdateDeleteTaskState.deleteTaskFailure());
      },
    );
  }
}
