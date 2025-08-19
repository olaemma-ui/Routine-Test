import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/error/error_handler.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/data/datasource/todo_remote_data_source.dart';
import 'package:todo_app/features/add_to_list/data/models/extension.dart';
import 'package:todo_app/features/add_to_list/data/models/task_model.dart';
import 'package:todo_app/features/add_to_list/data/models/todo_list_model.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

@LazySingleton(as: TodoRepository)
class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource dataSource;

  TodoRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, List<TodoListEntity>>> getTodoLists() async {
    try {
      final data = await dataSource.getTodoLists();
      final list = data
          .map((e) => TodoListModel.fromJson(e).toEntity())
          .toList();

      return Right(list);
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, TodoListEntity>> getSingleTodoList(
    String listId,
  ) async {
    try {
      final data = await dataSource.getTodoListById(listId);
      // log('data: $data');
      final list = TodoListModel.fromJson(
        data as Map<String, dynamic>,
      ).toEntity();
      return Right(list);
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, TodoListEntity>> createTodoList(String title) async {
    try {
      final data = await dataSource.createTodoList(title);
      final model = TodoListModel.fromJson(data).toEntity();
      return Right(model);
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, TodoListEntity>> updateTodoList({
    required String listId,
    required String title,
  }) async {
    try {
      final data = await dataSource.updateTodoList(
        listId: listId,
        title: title,
      );
      log('title: $title');
      log('response: $data');
      return Right(TodoListModel.fromJson(data).toEntity());
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTodoList(String listId) async {
    try {
      await dataSource.deleteTodoList(listId);
      return Right(null);
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, List<TaskEntity>>> getTasks(String listId) async {
    try {
      final data = await dataSource.getTasksByListId(listId);
      final tasks = data.map((e) => TaskModel.fromJson(e).toEntity()).toList();
      return Right(tasks);
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> addTask({
    required String listId,
    required String title,
    required String listTitle,
  }) async {
    try {
      updateTodoList(listId: listId, title: listTitle);
      final data = await dataSource.createTask(
        listId: listId,
        title: title,
        listTitle: listTitle,
      );
      return Right(TaskModel.fromJson(data).toEntity());
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> toggleTask({
    required String taskId,
    bool? isDone,
  }) async {
    try {
      final data = await dataSource.updateTask(taskId: taskId, isDone: isDone);
      return Right(TaskModel.fromJson(data).toEntity());
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> updateTask({
    required String taskId,
    String? title,
    bool? isDone,
    int? position,
  }) async {
    try {
      final data = await dataSource.updateTask(
        taskId: taskId,
        title: title,
        isDone: isDone,
        position: position,
      );
      return Right(TaskModel.fromJson(data).toEntity());
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteTask(String taskId) async {
    try {
      await dataSource.deleteTask(taskId);
      return Right(null);
    } catch (e) {
      return Left(SupabaseExceptionHandler.handleException(e));
    }
  }
}
