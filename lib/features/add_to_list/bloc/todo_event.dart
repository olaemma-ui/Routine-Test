part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.fetchLists() = _FetchLists;
  const factory TodoEvent.fetchTasks(String listId) = _FetchTasks;
  const factory TodoEvent.createList(String title) = _CreateList;
  const factory TodoEvent.updateTodoList({
    required String listId,
    required String title,
  }) = _UpdateTodoList;

  const factory TodoEvent.addTask({
    required String listId,
    required String title,
    required String listTitle,
  }) = _AddTask;
  const factory TodoEvent.toggleTask({
    required String taskId,
    required String listId,
    required bool isDone,
  }) = _ToggleTask;
  const factory TodoEvent.deleteTask(String taskId, String listId) =
      _DeleteTask;
}
