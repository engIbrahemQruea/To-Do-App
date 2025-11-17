// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/core/helpers/function_helper.dart';

import 'package:to_do_app/features/home/domain/usecases/get_all_task_by_date.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_state.dart';

class GetAllTaskByDateCubit extends Cubit<GetAllTaskByDateState> {
  final GetAllTaskByDateUseCase getAllTaskByDateUseCase;
  GetAllTaskByDateCubit(this.getAllTaskByDateUseCase)
    : super(GetAllTaskByDateState.initial());

late  DateTime currentDate;

  void emitGetAllTaskByDate(DateTime selectDate) async {
    emit(GetAllTaskByDateState.getAllTaskBySelectedDateLoading());
    currentDate = selectDate;
    final response = await getAllTaskByDateUseCase.call(
      formatDate(currentDate),
    );
    response.fold(
      (l) => emit(GetAllTaskByDateState.getAllTaskBySelectedDateFailure()),
      (r) => emit(GetAllTaskByDateState.getAllTaskBySelectedDateSuccess(r)),
    );
  }
}
