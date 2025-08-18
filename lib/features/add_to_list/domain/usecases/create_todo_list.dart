import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/add_to_list/data/repository/todo_repository.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

part 'create_todo_list.freezed.dart';

@freezed
class CreateTodoListParams with _$CreateTodoListParams {
  factory CreateTodoListParams({required String title}) = _CreateTodoListParams;
}

@lazySingleton
class CreateTodoList {
  final TodoRepository repository;
  CreateTodoList(this.repository);

  Future<Either<Failure, TodoListEntity>> call(CreateTodoListParams params) async {
    return repository.createTodoList(params.title);
  }
}
