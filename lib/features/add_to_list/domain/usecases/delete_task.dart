import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';

part 'delete_task.freezed.dart';

@freezed
class DeleteTaskParams with _$DeleteTaskParams {
  factory DeleteTaskParams({required String taskId}) = _DeleteTaskParams;
}

@lazySingleton
class DeleteTask {
  final TodoRepository repository;
  DeleteTask(this.repository);

  Future<Either<Failure, void>> call(DeleteTaskParams params) {
    return repository.deleteTask(params.taskId);
  }
}
