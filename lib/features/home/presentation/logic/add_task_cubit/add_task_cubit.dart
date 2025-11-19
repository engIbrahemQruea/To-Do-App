// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Cubit;
import 'package:to_do_app/core/helpers/function_helper.dart';

import 'package:to_do_app/features/home/domain/entitys/entity_task.dart';
import 'package:to_do_app/features/home/domain/usecases/insert_task.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_state.dart';

class AddTaskCubit extends Cubit<AddTaskState> {
  AddTaskCubit(this.insertTaskUseCase) : super(AddTaskState.initial());

  DateTime currentDate = DateTime.now();
  TimeOfDay currentTime = TimeOfDay.now();
  TimeOfDay currentEndTime = TimeOfDay.now();
  int currentIndex = 0;

  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitShowDateAndSelectDate(BuildContext context) async {
    emit(AddTaskState.getDateLoading());
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );
    if (pickedDate != null) {
      currentDate = pickedDate;
      emit(AddTaskState.getDateSuccess());
    } else {
      emit(AddTaskState.getDateFailure());
    }
  }

  void emitShowStartTime(BuildContext context) async {
    emit(AddTaskState.getStartTimeLoading());

    final pickedTime = await showTimePicker(
      context: context,
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: currentTime,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child!,
      ),
    );
    if (pickedTime != null) {
      currentTime = pickedTime;
      emit(AddTaskState.getStartTimeSuccess());
    } else {
      emit(AddTaskState.getStartTimeFailure());
    }
  }

  void emitShowEndTime(BuildContext context) async {
    emit(AddTaskState.getEndTimeLoading());

    final pickedTime = await showTimePicker(
      context: context,
      initialEntryMode: TimePickerEntryMode.input,
      initialTime: currentEndTime,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child!,
      ),
    );
    if (pickedTime != null) {
      currentEndTime = pickedTime;
      emit(AddTaskState.getEndTimeSuccess());
    } else {
      emit(AddTaskState.getEndTimeFailure());
    }
  }

  Color getColor(index) {
    emit(AddTaskState.getColorIndexChange());

    switch (index) {
      case 0:
        return const Color(0xFF4FC3F7); // Sky Blue
      case 1:
        return const Color(0xFF9575CD); // Purple
      case 2:
        return const Color(0xFF81C784); // Green
      case 3:
        return const Color(0xFFFFB76D); // Orange
      case 4:
        return const Color(0xFFF06292); // Pink
      case 5:
        return const Color(0xFFE57373); // Red
      default:
        return const Color(0xFF4FC3F7);
    }
  }

  void emitChangeColorIndex(index) {
    currentIndex = index;
    emit(AddTaskState.changeColorIndex());
  }

  final InsertTaskUseCase insertTaskUseCase;
  void emitAddTask() async {
    emit(AddTaskState.insertTaskToDatabaseLoading());
    try {
      await insertTaskUseCase.call(
        EntityTask(
          title: titleController.text,
          note: noteController.text,
          isCompleted: 0,
          date: currentDate.toString(),
          startTime: formatTimeOfDay(currentTime),
          endTime: formatTimeOfDay(currentEndTime),
          color: currentIndex,
        ),
      );
      titleController.clear();
      noteController.clear();
      emit(AddTaskState.insertTaskToDatabaseSuccess());
      //right(unit);
    } on Exception catch (e) {
      //left(e.toString());
      emit(AddTaskState.insertTaskToDatabaseFailure());
    }
  }
}
