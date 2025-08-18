import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/features/add_to_list/data/models/task_model.dart';

part 'todo_list_model.freezed.dart';
part 'todo_list_model.g.dart';

@freezed
class TodoListModel with _$TodoListModel {
  factory TodoListModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String title,
    required List<TaskModel> tasks,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TodoListModel;

  factory TodoListModel.fromJson(Map<String, dynamic> json) =>
      _$TodoListModelFromJson(json);
}
