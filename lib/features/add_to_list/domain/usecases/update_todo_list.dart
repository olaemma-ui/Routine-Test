import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

import '../../../../core/error/exception.dart';

part 'update_todo_list.freezed.dart';

@freezed
class UpdateTodoParams with _$UpdateTodoParams {
  factory UpdateTodoParams({required String listId, required String title}) =
      _UpdateTodoParams;
}

@lazySingleton
class UpdateTodoList {
  final TodoRepository repository;
  UpdateTodoList(this.repository);

  Future<Either<Failure, TodoListEntity>> call(UpdateTodoParams params) {
    return repository.updateTodoList(
      title: params.title,
      listId: params.listId,
    );
  }
}
