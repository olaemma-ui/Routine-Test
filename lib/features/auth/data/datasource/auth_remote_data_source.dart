import 'package:supabase_flutter/supabase_flutter.dart';

/// An abstract data source for handling authentication operations using Supabase.
///
/// This class defines the contract for authentication-related actions such as
/// logging in, signing up, social sign-in, retrieving the current user, and logging out.
/// Implementations of this class should interact with Supabase's authentication API.
abstract class AuthRemoteDataSource {
  /// Authenticates a user with the provided [email] and [password].
  ///
  /// Returns an [AuthResponse] containing authentication details if successful.
  /// Throws an exception if authentication fails.
  Future<AuthResponse> login({required String email, required String password});

  /// Registers a new user with the given [fullname], [email], and [password].
  ///
  /// Returns an [AuthResponse] containing registration details if successful.
  /// Throws an exception if registration fails.
  Future<AuthResponse> signup({
    required String fullname,
    required String email,
    required String password,
  });

  /// Initiates a social sign-in flow using the specified [provider].
  ///
  /// Returns `true` if the sign-in process was initiated successfully, otherwise `false`.
  /// Throws an exception if the process fails.
  Future<bool> signInSocial({required OAuthProvider provider});

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