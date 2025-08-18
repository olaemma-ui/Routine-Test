import 'package:injectable/injectable.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service.dart';
import 'package:todo_app/features/auth/bloc/auth_status_bloc.dart';

@module
abstract class AuthStatusModule {
  @LazySingleton()
  AuthStatusBloc provideAuthStatusBloc(SupabaseClientService client) =>
      AuthStatusBloc(client);
}
