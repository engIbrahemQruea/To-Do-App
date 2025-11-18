import 'package:get_it/get_it.dart';
import 'package:to_do_app/core/service/sqf_lite_data_base.dart';
import 'package:to_do_app/features/home/data/data_sources/add_task_local_data_source.dart';
import 'package:to_do_app/features/home/data/repos_impl/add_task_repo.dart';
import 'package:to_do_app/features/home/domain/repos/add_task_repos.dart';
import 'package:to_do_app/features/home/domain/usecases/delete_task.dart';
import 'package:to_do_app/features/home/domain/usecases/get_all_task.dart';
import 'package:to_do_app/features/home/domain/usecases/get_all_task_by_date.dart';
import 'package:to_do_app/features/home/domain/usecases/insert_task.dart';
import 'package:to_do_app/features/home/domain/usecases/up_date_task.dart';
import 'package:to_do_app/features/home/presentation/logic/add_task_cubit/add_task_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/get_task_by_date/get_all_task_by_date_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/home_cubit/home_screen_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/task_view_cubit/task_view_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/theme_cubit/switch_theme_cubit.dart';
import 'package:to_do_app/features/home/presentation/logic/home_screen_cubits/update_delete_task/update_delete_task_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  
  getIt.registerLazySingleton<AddTaskCubit>(() => AddTaskCubit(getIt()));
  getIt.registerLazySingleton<InsertTaskUseCase>(
    () => InsertTaskUseCase(getIt()),
  );
  getIt.registerLazySingleton<AddTaskRepos>(() => AddTaskRepoImpl(getIt()));
  getIt.registerSingleton<AddTaskLocalDataSource>(
    AddTaskLocalDataSourceImpl(sqfLiteDatabase: SqfLiteDatabase()),
  );

  //! home injection
  getIt.registerLazySingleton<HomeScreenCubit>(() => HomeScreenCubit(getIt()));
  getIt.registerLazySingleton<GetAllTaskUseCase>(
    () => GetAllTaskUseCase(getIt()),
  );
  getIt.registerLazySingleton<GetAllTaskByDateCubit>(
    () => GetAllTaskByDateCubit(getIt()),
  );
  getIt.registerLazySingleton<GetAllTaskByDateUseCase>(
    () => GetAllTaskByDateUseCase(getIt()),
  );

  //! Update Delete task in home screen
  getIt.registerLazySingleton<UpdateDeleteTaskCubit>(
    () => UpdateDeleteTaskCubit(getIt(), getIt()),
  );
  getIt.registerLazySingleton<UpDateTaskUseCase>(
    () => UpDateTaskUseCase(getIt()),
  );
  getIt.registerLazySingleton<DeleteTaskUseCase>(
    () => DeleteTaskUseCase(getIt()),
  );
  //! show all task or by date
  getIt.registerLazySingleton<TasksViewCubit>(() => TasksViewCubit());

//!change theme app
  getIt.registerLazySingleton<SwitchThemeCubit>(() => SwitchThemeCubit());
}
