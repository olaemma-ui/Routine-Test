import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';

import '../../../../core/error/exception.dart';
import '../entities/task_entity.dart';

part 'add_task.freezed.dart';

@freezed
class AddTaskParams with _$AddTaskParams {
  factory AddTaskParams({
    required String listId,
    required String title,
    required String listTitle,
  }) = _AddTaskParams;
}

@lazySingleton
class AddTask {
  final TodoRepository repository;
  AddTask(this.repository);

  Future<Either<Failure, TaskEntity>> call(AddTaskParams params) {
    return repository.addTask(
      listId: params.listId,
      title: params.title,
      listTitle: params.listTitle,
    );
  }
}
