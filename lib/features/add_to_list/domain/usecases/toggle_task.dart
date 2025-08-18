import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';

@lazySingleton
class ToggleTask {
  final TodoRepository repository;
  ToggleTask(this.repository);

  Future<Either<Failure, TaskEntity>> call({
    required String taskId,
    String? listId,
    required bool isDone,
  }) {
    return repository.toggleTask(taskId: taskId, isDone: isDone);
  }
}
