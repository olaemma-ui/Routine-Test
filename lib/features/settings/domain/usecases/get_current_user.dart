import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/auth/data/repository/auth_repo.dart';


@LazySingleton()
class GetCurrentUser {
  final AuthRepository repository;
  GetCurrentUser(this.repository);

  Future<Either<Failure, User?>> call() async {
    final response = await repository.getCurrentUser();
    return response;
  }

}
