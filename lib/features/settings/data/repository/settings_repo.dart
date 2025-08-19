import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/exception.dart';

abstract class SettingsRepo {
  Future<Either<Failure, User?>> getCurrentUser();

  Future<Either<Failure, bool>> logout();
}
