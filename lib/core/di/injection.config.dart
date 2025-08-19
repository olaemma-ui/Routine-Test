// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:todo_app/core/di/auth_status_module.dart' as _i456;
import 'package:todo_app/core/di/supabase_module.dart' as _i637;
import 'package:todo_app/core/service/supabase/supabase_client_service.dart'
    as _i428;
import 'package:todo_app/features/add_to_list/bloc/todo_bloc.dart' as _i56;
import 'package:todo_app/features/add_to_list/data/datasource/supabase/supabase_todo_data_source_impl.dart'
    as _i477;
import 'package:todo_app/features/add_to_list/data/datasource/todo_remote_data_source.dart'
    as _i612;
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart'
    as _i788;
import 'package:todo_app/features/add_to_list/data/repository/todo_repository_impl.dart'
    as _i996;
import 'package:todo_app/features/add_to_list/domain/usecases/add_task.dart'
    as _i434;
import 'package:todo_app/features/add_to_list/domain/usecases/create_todo_list.dart'
    as _i115;
import 'package:todo_app/features/add_to_list/domain/usecases/delete_task.dart'
    as _i923;
import 'package:todo_app/features/add_to_list/domain/usecases/get_tasks_list.dart'
    as _i434;
import 'package:todo_app/features/add_to_list/domain/usecases/get_todo_lists.dart'
    as _i97;
import 'package:todo_app/features/add_to_list/domain/usecases/toggle_task.dart'
    as _i1008;
import 'package:todo_app/features/add_to_list/domain/usecases/update_task.dart'
    as _i488;
import 'package:todo_app/features/add_to_list/domain/usecases/update_todo_list.dart'
    as _i75;
import 'package:todo_app/features/auth/bloc/auth_bloc.dart' as _i611;
import 'package:todo_app/features/auth/bloc/auth_status_bloc.dart' as _i262;
import 'package:todo_app/features/auth/data/datasource/auth_remote_data_source.dart'
    as _i530;
import 'package:todo_app/features/auth/data/datasource/supabase/supabase_auth_data_source_impl.dart'
    as _i265;
import 'package:todo_app/features/auth/data/repository/auth_repo.dart' as _i429;
import 'package:todo_app/features/auth/data/repository/auth_repo_impl.dart'
    as _i316;
import 'package:todo_app/features/auth/domain/usecases/login_user.dart'
    as _i896;
import 'package:todo_app/features/auth/domain/usecases/register_user.dart'
    as _i161;
import 'package:todo_app/features/settings/bloc/settings_bloc.dart' as _i88;
import 'package:todo_app/features/settings/data/datasource/settings_data_source.dart'
    as _i279;
import 'package:todo_app/features/settings/data/datasource/supabase/supabase_settings_data_source_impl.dart'
    as _i215;
import 'package:todo_app/features/settings/data/repository/settings_repo.dart'
    as _i463;
import 'package:todo_app/features/settings/data/repository/settings_repo_impl.dart'
    as _i482;
import 'package:todo_app/features/settings/domain/usecases/get_current_user.dart'
    as _i50;
import 'package:todo_app/features/settings/domain/usecases/logout_user.dart'
    as _i530;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final supabaseModule = _$SupabaseModule();
    final authStatusModule = _$AuthStatusModule();
    gh.lazySingleton<_i454.SupabaseClient>(
      () => supabaseModule.provideSupabaseClient(),
    );
    gh.lazySingleton<_i428.SupabaseClientService>(
      () => supabaseModule.provideSupabaseService(gh<_i454.SupabaseClient>()),
    );
    gh.lazySingleton<_i262.AuthStatusBloc>(
      () => authStatusModule.provideAuthStatusBloc(
        gh<_i428.SupabaseClientService>(),
      ),
    );
    gh.lazySingleton<_i279.SettingsDataSource>(
      () => _i215.SupabaseSettingsDataSourceImpl(
        gh<_i428.SupabaseClientService>(),
      ),
    );
    gh.lazySingleton<_i463.SettingsRepo>(
      () => _i482.SettingsRepoImpl(gh<_i279.SettingsDataSource>()),
    );
    gh.lazySingleton<_i530.LogoutUser>(
      () => _i530.LogoutUser(gh<_i463.SettingsRepo>()),
    );
    gh.lazySingleton<_i530.AuthRemoteDataSource>(
      () => _i265.SupabaseAuthDataSourceImpl(gh<_i428.SupabaseClientService>()),
    );
    gh.lazySingleton<_i612.TodoRemoteDataSource>(
      () => _i477.SupabaseTodoDataSourceImpl(gh<_i428.SupabaseClientService>()),
    );
    gh.lazySingleton<_i788.TodoRepository>(
      () => _i996.TodoRepositoryImpl(gh<_i612.TodoRemoteDataSource>()),
    );
    gh.lazySingleton<_i97.GetTodoLists>(
      () => _i97.GetTodoLists(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i115.CreateTodoList>(
      () => _i115.CreateTodoList(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i434.AddTask>(
      () => _i434.AddTask(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i488.UpdateTask>(
      () => _i488.UpdateTask(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i923.DeleteTask>(
      () => _i923.DeleteTask(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i434.GetTasksList>(
      () => _i434.GetTasksList(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i1008.ToggleTask>(
      () => _i1008.ToggleTask(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i75.UpdateTodoList>(
      () => _i75.UpdateTodoList(gh<_i788.TodoRepository>()),
    );
    gh.lazySingleton<_i429.AuthRepository>(
      () => _i316.AuthRepositoryImpl(gh<_i530.AuthRemoteDataSource>()),
    );
    gh.factory<_i56.TodoBloc>(
      () => _i56.TodoBloc(
        getTodoLists: gh<_i97.GetTodoLists>(),
        getTasksList: gh<_i434.GetTasksList>(),
        createTodoList: gh<_i115.CreateTodoList>(),
        addTask: gh<_i434.AddTask>(),
        updateTask: gh<_i488.UpdateTask>(),
        updateTodoList: gh<_i75.UpdateTodoList>(),
        toggleTask: gh<_i1008.ToggleTask>(),
        deleteTask: gh<_i923.DeleteTask>(),
      ),
    );
    gh.lazySingleton<_i896.LoginUser>(
      () => _i896.LoginUser(gh<_i429.AuthRepository>()),
    );
    gh.lazySingleton<_i161.RegisterUser>(
      () => _i161.RegisterUser(gh<_i429.AuthRepository>()),
    );
    gh.lazySingleton<_i50.GetCurrentUser>(
      () => _i50.GetCurrentUser(gh<_i429.AuthRepository>()),
    );
    gh.factory<_i88.SettingsBloc>(
      () => _i88.SettingsBloc(
        logoutUser: gh<_i530.LogoutUser>(),
        getCurrentUser: gh<_i50.GetCurrentUser>(),
      ),
    );
    gh.factory<_i611.AuthBloc>(
      () => _i611.AuthBloc(
        loginUser: gh<_i896.LoginUser>(),
        registerUser: gh<_i161.RegisterUser>(),
      ),
    );
    return this;
  }
}

class _$SupabaseModule extends _i637.SupabaseModule {}

class _$AuthStatusModule extends _i456.AuthStatusModule {}
