import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/settings/data/repository/settings_repo.dart';

@lazySingleton
class LogoutUser {
  final SettingsRepo repository;
  LogoutUser(this.repository);

  Future<Either<Failure, bool>> call() async {
    final response = await repository.logout();
    return response;
  }
}
