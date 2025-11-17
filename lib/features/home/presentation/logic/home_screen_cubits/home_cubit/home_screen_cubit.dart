// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/features/home/domain/usecases/get_all_task.dart';

import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this.getAllTaskUseCase) : super(HomeScreenState.initial());
  final GetAllTaskUseCase getAllTaskUseCase;
  void emitGetAllTask() async {
    emit(HomeScreenState.getAllTaskLoading());

    final response = await getAllTaskUseCase.call();


    response.fold(
      (l) => emit(HomeScreenState.getAllTaskFailure()),
      (r) => emit(HomeScreenState.getAllTaskSuccess(r)),
    );
  }
}
