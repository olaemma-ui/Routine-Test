import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/service/supabase/supabase_client_service.dart';
import 'package:todo_app/features/auth/data/datasource/auth_remote_data_source.dart';

@LazySingleton(as: AuthRemoteDataSource)
class SupabaseAuthDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClientService supabaseClientService;

  SupabaseAuthDataSourceImpl(this.supabaseClientService);

  @override
  Future<bool> signInSocial({required OAuthProvider provider}) {
    return supabaseClientService.client.auth.signInWithOAuth(provider);
  }

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

  @override
  Future<AuthResponse> login({
    required String email,
    required String password,
  }) {
    // TODO: implement login
    return supabaseClientService.client.auth.signInWithPassword(
      password: password,
      email: email,
    );
  }

  @override
  Future<AuthResponse> signup({
    required String fullname,
    required String email,
    required String password,
  }) {
    // TODO: implement signup
    return supabaseClientService.client.auth.signUp(
      password: password,
      email: email,
      data: {'fullname': fullname},
    );
  }
}
