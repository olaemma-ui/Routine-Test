import 'package:supabase_flutter/supabase_flutter.dart';


abstract class SettingsDataSource {

  /// Retrieves the currently authenticated user, if any.
  ///
  /// Returns a [User] object if a user is logged in, or `null` if no user is authenticated.
  Future<User?> getCurrentUser();

  /// Logs out the currently authenticated user.
  ///
  /// Returns a [Future] that completes when the logout process is finished.
  /// Throws an exception if logout fails.
  Future<void> logout();
}