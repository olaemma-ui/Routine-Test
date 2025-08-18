part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = LoginRequested;

  const factory AuthEvent.register({
    required String email,
    required String password,
    required String fullName,
  }) = RegisterRequested;
}
