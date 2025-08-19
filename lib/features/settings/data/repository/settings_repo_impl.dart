import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/error_handler.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/settings/data/datasource/settings_data_source.dart';
import 'package:todo_app/features/settings/data/repository/settings_repo.dart';

@LazySingleton(as: SettingsRepo)
class SettingsRepoImpl implements SettingsRepo {
  final SettingsDataSource remoteDataSource;

  SettingsRepoImpl(this.remoteDataSource);

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
}
