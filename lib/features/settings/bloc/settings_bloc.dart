import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/features/settings/domain/usecases/get_current_user.dart';
import 'package:todo_app/features/settings/domain/usecases/logout_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/routes/router.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@Injectable()
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final LogoutUser _logoutUser;
  final GetCurrentUser _getCurrentUser;

  SettingsBloc({
    required LogoutUser logoutUser,
    required GetCurrentUser getCurrentUser,
  }) : _logoutUser = logoutUser,
       _getCurrentUser = getCurrentUser,
       super(const SettingsState.initial()) {
    on<LogoutRequested>(_onLogoutRequested);
    on<FetchCurrentUser>(_onFetchCurrentUser);
  }

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<SettingsState> emit,
  ) async {
    emit(const SettingsState.loading());
    final result = await _logoutUser();
    result.fold(
      (failure) => emit(SettingsState.failure(failure.prettyMessage)),
      (_) {
        routeNotifier.value = false;
        emit(const SettingsState.loggedOut());
      },
    );
  }

  Future<void> _onFetchCurrentUser(
    FetchCurrentUser event,
    Emitter<SettingsState> emit,
  ) async {
    emit(const SettingsState.loading());
    final result = await _getCurrentUser();
    result.fold(
      (failure) => emit(SettingsState.failure(failure.prettyMessage)),
      (user) => emit(SettingsState.userLoaded(user!)),
    );
  }
}
