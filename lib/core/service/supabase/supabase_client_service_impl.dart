import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service.dart';


class SupabaseClientServiceImpl implements SupabaseClientService {
  final SupabaseClient _client;

  SupabaseClientServiceImpl(this._client);

  @override
  SupabaseClient get client => _client;
}
