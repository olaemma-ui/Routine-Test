import 'package:freezed_annotation/freezed_annotation.dart';
import 'task_entity.dart';

part 'todo_list_entity.freezed.dart';

@freezed
class TodoListEntity with _$TodoListEntity {
  const factory TodoListEntity({
    required String id,
    required String title,
    List<TaskEntity>? tasks,
  }) = _TodoListEntity;
}
