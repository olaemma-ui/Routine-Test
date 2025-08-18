import 'package:injectable/injectable.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service.dart';
import 'package:todo_app/features/add_to_list/data/datasource/todo_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: TodoRemoteDataSource)
class SupabaseTodoDataSourceImpl implements TodoRemoteDataSource {
  final SupabaseClientService supabaseClientService;

  SupabaseTodoDataSourceImpl(this.supabaseClientService);

  SupabaseClient get _client => supabaseClientService.client;

  @override
  Future<List<Map<String, dynamic>>> getTodoLists() async {
    final response = await _client
        .from('todo_lists')
        .select('*, tasks(*)') // 👈 fetch lists and their tasks
        .order('created_at'); // order by list created_at
    return List<Map<String, dynamic>>.from(response);
  }

  @override
  Future<Map<String, dynamic>?> getTodoListById(String listId) async {
    final data = await _client
        .from('todo_lists')
        .select('id, title, user_id, tasks (id, title, is_done, position)')
        .eq('id', listId)
        .single();

    return data;
  }

  @override
  Future<Map<String, dynamic>> createTodoList(String title) async {
    final userId = _client.auth.currentUser!.id;
    final inserted = await _client
        .from('todo_lists')
        .insert({'title': title, 'user_id': userId})
        .select()
        .single();
    return inserted;
  }

  @override
  Future<Map<String, dynamic>> updateTodoList({
    required String listId,
    required String title,
  }) async {
    final updated = await _client
        .from('todo_lists')
        .update({
          'title': title,
          'updated_at': DateTime.now().toIso8601String(),
        })
        .eq('id', listId)
        .select()
        .single();
    return updated;
  }

  @override
  Future<void> deleteTodoList(String listId) async {
    await _client.from('todo_lists').delete().eq('id', listId);
  }

  // Tasks >>-------------------------------------------------------------

  @override
  Future<List<Map<String, dynamic>>> getTasksByListId(String listId) async {
    final data = await _client
        .from('tasks')
        .select('*')
        .eq('list_id', listId)
        .order('created_at');
    return List<Map<String, dynamic>>.from(data);
  }

  @override
  Future<Map<String, dynamic>> createTask({
    required String listId,
    required String title,
  }) async {
    final inserted = await _client
        .from('tasks')
        .insert({'title': title, 'list_id': listId})
        .select()
        .single();
    return inserted;
  }

  @override
  Future<Map<String, dynamic>> updateTask({
    required String taskId,
    String? title,
    bool? isDone,
    int? position,
  }) async {
    final updated = await _client
        .from('tasks')
        .update({
          if (title != null) 'title': title,
          if (isDone != null) 'is_done': isDone,
          if (position != null) 'position': position,
          'updated_at': DateTime.now().toIso8601String(),
        })
        .eq('id', taskId)
        .select()
        .single();
    return updated;
  }

  @override
  Future<void> deleteTask(String taskId) async {
    await _client.from('tasks').delete().eq('id', taskId);
  }
}
