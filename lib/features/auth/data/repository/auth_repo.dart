import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/exception.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, AuthResponse>> register({
    required String email,
    required String password,
    required String fullName,
  });

  Future<Either<Failure, bool>> registerSocial({
    required OAuthProvider provider,
  });

  Future<Either<Failure, User?>> getCurrentUser();

}
