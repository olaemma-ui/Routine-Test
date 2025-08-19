part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.userLoaded(User user) = _UserLoaded;
  const factory SettingsState.loggedOut() = _LoggedOut;
  const factory SettingsState.failure(String message) = _Failure;
}
