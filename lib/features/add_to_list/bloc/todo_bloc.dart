

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
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
import 'package:todo_app/features/add_to_list/domain/usecases/update_todo_list.dart';

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
  final UpdateTodoList updateTodoList;
  final DeleteTask deleteTask;
  final ToggleTask toggleTask;

  TodoBloc({
    required this.getTodoLists,
    required this.getTasksList,
    required this.createTodoList,
    required this.addTask,
    required this.updateTask,
    required this.updateTodoList,
    required this.toggleTask,
    required this.deleteTask,
  }) : super(const TodoState.initial()) {
    on<_FetchLists>(_onFetchLists);
    on<_FetchTasks>(_onFetchTasks);
    on<_CreateList>(_onCreateList);
    on<_AddTask>(_onAddTask);
    on<_ToggleTask>(_onToggleTask);
    on<_DeleteTask>(_onDeleteTask);
    on<_UpdateTodoList>(_onUpdateTodoList);
  }

  // ---------- Fetch Todo Lists ----------
  Future<void> _onFetchLists(_FetchLists event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    final result = await getTodoLists();

    result.fold(
      (failure) => emit(TodoState.error(failure.prettyMessage)),
      (lists) => emit(TodoState.loaded(lists: lists)),
    );
  }

  // ---------- Fetch Tasks for a List ----------
  Future<void> _onFetchTasks(_FetchTasks event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    final result = await getTasksList(event.listId);

    result.fold(
      (failure) => emit(TodoState.error(failure.prettyMessage)),
      (tasks) => emit(TodoState.loaded(taskEntityList: tasks)),
    );
  }

  // ---------- Create Todo List ----------
  Future<void> _onCreateList(_CreateList event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final newList = TodoListEntity(
        id: UniqueKey().toString(),
        title: event.title,
        // createdAt: DateTime.now(),
      );

      // optimistic UI update
      final updatedLists = List<TodoListEntity>.from(currentState.lists ?? [])
        ..add(newList);

      emit(currentState.copyWith(lists: updatedLists));

      final result = await createTodoList(
        CreateTodoListParams(title: event.title),
      );

      result.fold(
        (failure) {
          // rollback
          final rolledBack = List<TodoListEntity>.from(updatedLists)
            ..remove(newList);
          emit(
            currentState.copyWith(
              lists: rolledBack,
              error: failure.prettyMessage,
            ),
          );
        },
        (_) => add(const TodoEvent.fetchLists()), // sync
      );
    } else {
      // first time create → just call API
      final result = await createTodoList(
        CreateTodoListParams(title: event.title),
      );
      result.fold(
        (failure) => emit(TodoState.error(failure.prettyMessage)),
        (_) => add(const TodoEvent.fetchLists()),
      );
    }
  }

  // ---------- Add Task ----------
  Future<void> _onAddTask(_AddTask event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final newTask = TaskEntity(
        id: UniqueKey().toString(), // temporary ID
        title: event.title,
        isDone: false,
      );

      final updatedTasks = List<TaskEntity>.from(
        currentState.taskEntityList ?? [],
      )..add(newTask);

      // optimistic update
      emit(currentState.copyWith(taskEntityList: updatedTasks));

      final result = await addTask(
        AddTaskParams(
          listId: event.listId,
          title: event.title,
          listTitle: event.listTitle,
        ),
      );

      result.fold(
        (failure) {
          // rollback
          final rolledBack = List<TaskEntity>.from(updatedTasks)
            ..remove(newTask);
          emit(
            currentState.copyWith(
              taskEntityList: rolledBack,
              error: failure.prettyMessage,
            ),
          );
        },
        (_) => add(TodoEvent.fetchTasks(event.listId)), // sync with backend
      );
    }
  }

  // ---------- Toggle Task ----------
  Future<void> _onToggleTask(_ToggleTask event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedTasks = currentState.taskEntityList?.map((task) {
        if (task.id == event.taskId) {
          return task.copyWith(isDone: event.isDone);
        }
        return task;
      }).toList();

      // optimistic update
      emit(currentState.copyWith(taskEntityList: updatedTasks));

      final result = await toggleTask(
        isDone: event.isDone,
        taskId: event.taskId,
      );

      result.fold(
        (failure) {
          // rollback
          emit(
            currentState.copyWith(
              taskEntityList: currentState.taskEntityList,
              error: failure.prettyMessage,
            ),
          );
        },
        (_) => add(TodoEvent.fetchTasks(event.listId)), // sync
      );
    }
  }

  // ---------- Delete Task ----------
  Future<void> _onDeleteTask(_DeleteTask event, Emitter<TodoState> emit) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final taskToRemove = currentState.taskEntityList?.firstWhere(
        (task) => task.id == event.taskId,
      );

      final updatedTasks = List<TaskEntity>.from(
        currentState.taskEntityList ?? [],
      )..removeWhere((t) => t.id == event.taskId);

      // optimistic update
      emit(currentState.copyWith(taskEntityList: updatedTasks));

      final result = await deleteTask(DeleteTaskParams(taskId: event.taskId));

      result.fold(
        (failure) {
          // rollback
          final rolledBack = List<TaskEntity>.from(updatedTasks);
          if (taskToRemove != null) rolledBack.add(taskToRemove);
          emit(
            currentState.copyWith(
              taskEntityList: rolledBack,
              error: failure.prettyMessage,
            ),
          );
        },
        (_) => add(TodoEvent.fetchTasks(event.listId)), // sync
      );
    }
  }

  // ---------- Update Todo List ----------
  Future<void> _onUpdateTodoList(
    _UpdateTodoList event,
    Emitter<TodoState> emit,
  ) async {
    final currentState = state;
    if (currentState is _Loaded) {
      final updatedLists = currentState.lists?.map((list) {
        if (list.id == event.listId) {
          return list.copyWith(title: event.title);
        }
        return list;
      }).toList();

      // optimistic update
      emit(currentState.copyWith(lists: updatedLists));

      final result = await updateTodoList(
        UpdateTodoParams(title: event.title, listId: event.listId),
      );

      result.fold(
        (failure) {
          // rollback
          emit(
            currentState.copyWith(
              lists: currentState.lists,
              error: failure.prettyMessage,
            ),
          );
        },
        (_) => add(const TodoEvent.fetchLists()), // sync
      );
    }
  }
}
