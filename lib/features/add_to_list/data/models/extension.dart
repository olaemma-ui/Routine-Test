import 'package:todo_app/features/add_to_list/data/models/task_model.dart';
import 'package:todo_app/features/add_to_list/data/models/todo_list_model.dart';
import 'package:todo_app/features/add_to_list/domain/entities/task_entity.dart';
import 'package:todo_app/features/add_to_list/domain/entities/todo_list_entity.dart';

extension TodoListModelX on TodoListModel {
  TodoListEntity toEntity() {
    return TodoListEntity(
      id: id,
      title: title,
      tasks: tasks.map((task) => task.toEntity()).toList(),
    );
  }
}

extension TaskModelX on TaskModel {
  TaskEntity toEntity() {
    return TaskEntity(id: id, title: title, isDone: isDone, position: position);
  }
}
