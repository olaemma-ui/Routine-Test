import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

@lazySingleton
class GetTodoLists {
  final TodoRepository repository;
  GetTodoLists(this.repository);

  Future<Either<Failure, List<TodoListEntity>>> call() {
    return repository.getTodoLists();
  }
}
