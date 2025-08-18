import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/add_task.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/create_todo_list.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/delete_task.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/get_tasks_list.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/get_todo_lists.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/toggle_task.dart';
import 'package:todo_app/features/add_to_list/domain/usecases/update_task.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final GetTodoLists getTodoLists;
  final GetTasksList getTasksList;
  final CreateTodoList createTodoList;
  final AddTask addTask;
  final UpdateTask updateTask;
  final DeleteTask deleteTask;
  final ToggleTask toggleTask;

  TodoBloc({
    required this.getTodoLists,
    required this.getTasksList,
    required this.createTodoList,
    required this.addTask,
    required this.updateTask,
    required this.toggleTask,
    required this.deleteTask,
  }) : super(const TodoState.initial()) {
    on<_FetchLists>(_onFetchLists);
    on<_FetchTasks>(_onFetchTasks);
    on<_CreateList>(_onCreateList);
    on<_AddTask>(_onAddTask);
    on<_ToggleTask>(_onToggleTask);
    on<_DeleteTask>(_onDeleteTask);
  }

  Future<void> _onFetchTasks(_FetchTasks event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    final result = await getTasksList(event.listId);

    result.fold(
      (failure) => emit(TodoState.error(failure.prettyMessage)),
      (lists) => emit(TodoState.loaded(taskEntityList: lists)),
    );
  }

  Future<void> _onFetchLists(_FetchLists event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    final result = await getTodoLists();

    result.fold(
      (failure) => emit(TodoState.error(failure.prettyMessage)),
      (lists) => emit(TodoState.loaded(lists: lists)),
    );
  }

  Future<void> _onCreateList(_CreateList event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    final result = await createTodoList(
      CreateTodoListParams(title: event.title),
    );
    result.fold(
      (failure) => emit(TodoState.error(failure.prettyMessage)),
      (_) => add(const TodoEvent.fetchLists()), // reload lists on success
    );
  }

  Future<void> _onAddTask(_AddTask event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // call repo
      final result = await addTask(
        AddTaskParams(listId: event.listId, title: event.title),
      );

      result.fold(
        (failure) => emit(currentState.copyWith(error: failure.prettyMessage)),
        (_) => add(TodoEvent.fetchTasks(event.listId)),
      );
    }
  }

  Future<void> _onToggleTask(_ToggleTask event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // call repo
      final result = await toggleTask(
        isDone: event.isDone,
        taskId: event.taskId,
      );

      result.fold(
        (failure) => emit(currentState.copyWith(error: failure.prettyMessage)),
        (_) => add(TodoEvent.fetchTasks(event.listId)),
      );
    }
  }

  Future<void> _onDeleteTask(_DeleteTask event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      // call repo
      final result = await deleteTask(DeleteTaskParams(taskId: event.taskId));

      result.fold(
        (failure) => emit(currentState.copyWith(error: failure.prettyMessage)),
        (_) => add(TodoEvent.fetchTasks(event.listId)),
      );
    }
  }
}
