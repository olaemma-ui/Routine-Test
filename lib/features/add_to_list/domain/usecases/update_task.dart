import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';

import '../../../../core/error/exception.dart';
import '../entities/task_entity.dart';

part 'update_task.freezed.dart';

@freezed
class UpdateTaskParams with _$UpdateTaskParams {
  factory UpdateTaskParams({
    required String taskId,
    String? title,
    bool? isDone,
    int? position,
  }) = _UpdateTaskParams;
}

@lazySingleton
class UpdateTask {
  final TodoRepository repository;
  UpdateTask(this.repository);

  Future<Either<Failure, TaskEntity>> call(UpdateTaskParams params) {
    return repository.updateTask(
      taskId: params.taskId,
      title: params.title,
      isDone: params.isDone,
      position: params.position,
    );
  }
}
