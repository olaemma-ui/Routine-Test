// auth_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/auth/domain/usecases/login_user.dart';
import 'package:todo_app/features/auth/domain/usecases/register_user.dart';
import 'package:todo_app/routes/router.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUser loginUser;
  final RegisterUser registerUser;

  AuthBloc({required this.loginUser, required this.registerUser})
    : super(const AuthState.initial()) {
    on<LoginRequested>(_onLogin);
    on<RegisterRequested>(_onRegister);
  }

  Future<void> _onLogin(LoginRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await loginUser(
      email: event.email,
      password: event.password,
    );
    result.fold(
      (failure) => emit(AuthState.failure(failure)),
      (authResponse) {
        routeNotifier.value = true;
        emit(AuthState.success(authResponse.user!));
      },
    );
  }

  Future<void> _onRegister(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await registerUser(
      email: event.email,
      password: event.password,
      fullname: event.fullName,
    );
    result.fold(
      (failure) => emit(AuthState.failure(failure)),
      (authResponse) => emit(AuthState.success(authResponse.user!)),
    );
  }
}
