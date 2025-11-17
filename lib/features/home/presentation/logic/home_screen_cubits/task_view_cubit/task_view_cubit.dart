import 'package:flutter_bloc/flutter_bloc.dart';

class TasksViewCubit extends Cubit<bool> {
  TasksViewCubit() : super(false); // false => عرض التقويم

  void toggle() => emit(!state);
}
