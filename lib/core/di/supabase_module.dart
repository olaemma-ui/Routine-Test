import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service_impl.dart';

@module
abstract class SupabaseModule {
  @lazySingleton
  SupabaseClient provideSupabaseClient() => Supabase.instance.client;

  @lazySingleton
  SupabaseClientService provideSupabaseService(SupabaseClient client) =>
      SupabaseClientServiceImpl(client);
      
}
