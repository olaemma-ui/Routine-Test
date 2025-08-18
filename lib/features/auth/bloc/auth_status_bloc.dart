import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo_app/core/service/supabase/supabase_client_service.dart';

abstract class AuthStatusEvent {}

class CheckSession extends AuthStatusEvent {}

class AuthStatusState {
  final bool isLoggedIn;
  const AuthStatusState({required this.isLoggedIn});
}

class AuthStatusBloc extends Bloc<AuthStatusEvent, AuthStatusState> {
  final SupabaseClientService clientService;

  AuthStatusBloc(this.clientService)
    : super(const AuthStatusState(isLoggedIn: false)) {
    on<CheckSession>((event, emit) {
      final user = clientService.client.auth.currentUser;
      emit(AuthStatusState(isLoggedIn: user != null));
    });
  }
}
