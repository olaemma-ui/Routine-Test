import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/error_handler.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/auth/data/datasource/auth_remote_data_source.dart';
import 'package:todo_app/features/auth/data/repository/auth_repo.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, User?>> getCurrentUser() async {
    // TODO: implement getCurrentUser
    try {
      final user = await remoteDataSource.getCurrentUser();
      return Right(user);
    } catch (e) {
      final failure = SupabaseExceptionHandler.handleException(e);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  }) async {
    // TODO: implement login
    try {
      final response = await remoteDataSource.login(
        email: email,
        password: password,
      );

      return Right(response);
    } catch (e) {
      final failure = SupabaseExceptionHandler.handleException(e);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, bool>> logout() async {
    // TODO: implement logout
    try {
      await remoteDataSource.logout();
      return Right(true);
    } catch (e) {
      final failure = SupabaseExceptionHandler.handleException(e);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> register({
    required String email,
    required String password,
    required String fullName,
  }) async {
    // TODO: implement register
    try {
      final response = await remoteDataSource.signup(
        email: email,
        password: password,
        fullname: fullName,
      );

      return Right(response);
    } catch (e) {
      final failure = SupabaseExceptionHandler.handleException(e);
      return Left(failure);
    }
  }

  @override
  Future<Either<Failure, bool>> registerSocial({
    required OAuthProvider provider,
  }) async {
    // TODO: implement registerSocial
    try {
      final response = await remoteDataSource.signInSocial(provider: provider);
      return Right(response);
    } catch (e) {
      final failure = SupabaseExceptionHandler.handleException(e);
      return Left(failure);
    }
  }
}
