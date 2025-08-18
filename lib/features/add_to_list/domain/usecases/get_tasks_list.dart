import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';

@lazySingleton
class GetTasksList {
  final TodoRepository repository;
  GetTasksList(this.repository);

  Future<Either<Failure, List<TaskEntity>>> call(String listId) {
    return repository.getTasks(listId);
  }
}
