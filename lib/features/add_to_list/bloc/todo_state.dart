part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.loaded({
    List<TodoListEntity>? lists,
    List<TaskEntity>? taskEntityList,
    String? error,
  }) = _Loaded;
  const factory TodoState.error(String message) = _Error;
}
