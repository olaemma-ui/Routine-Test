abstract class TodoRemoteDataSource {
  // Todo Lists
  Future<List<Map<String, dynamic>>> getTodoLists();
  Future<Map<String, dynamic>?> getTodoListById(String listId);
  Future<Map<String, dynamic>> createTodoList(String title);
  Future<Map<String, dynamic>> updateTodoList({
    required String listId,
    required String title,
  });
  Future<void> deleteTodoList(String listId);

  // Tasks
  Future<List<Map<String, dynamic>>> getTasksByListId(String listId);
  Future<Map<String, dynamic>> createTask({
    required String listId,
    required String listTitle,
    required String title,
  });
  Future<Map<String, dynamic>> updateTask({
    required String taskId,
    String? title,
    bool? isDone,
    int? position,
  });
  Future<void> deleteTask(String taskId);
}
