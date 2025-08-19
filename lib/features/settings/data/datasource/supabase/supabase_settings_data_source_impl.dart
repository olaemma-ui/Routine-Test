import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service.dart';
import 'package:todo_app/features/settings/data/datasource/settings_data_source.dart';

@LazySingleton(as: SettingsDataSource)
class SupabaseSettingsDataSourceImpl implements SettingsDataSource {
  final SupabaseClientService supabaseClientService;

  SupabaseSettingsDataSourceImpl(this.supabaseClientService);


  @override
  Future<void> logout() async {
    await supabaseClientService.client.auth.signOut();
  }

  @override
  Future<User?> getCurrentUser() async {
    // TODO: implement getCurrentUser
    final response = supabaseClientService.client.auth.currentUser;
    return response;
  }
}
