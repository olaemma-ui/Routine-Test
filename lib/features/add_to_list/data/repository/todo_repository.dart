import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

abstract class TodoRepository {
  // Lists
  Future<Either<Failure, List<TodoListEntity>>> getTodoLists();
  Future<Either<Failure, TodoListEntity>> createTodoList(String title);
  Future<Either<Failure, TodoListEntity>> updateTodoList({
    required String listId,
    required String title,
  });
  Future<Either<Failure, TodoListEntity>> getSingleTodoList(String listId);
  Future<Either<Failure, void>> deleteTodoList(String listId);

  // Tasks
  Future<Either<Failure, List<TaskEntity>>> getTasks(String listId);
  Future<Either<Failure, TaskEntity>> addTask({
    required String listId,
    required String title,
  });
  Future<Either<Failure, TaskEntity>> toggleTask({
    required String taskId,
    bool? isDone,
  });
  Future<Either<Failure, TaskEntity>> updateTask({
    required String taskId,
    String? title,
    bool? isDone,
    int? position,
  });
  Future<Either<Failure, void>> deleteTask(String taskId);
}
