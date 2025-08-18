import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/auth/data/repository/auth_repo.dart';

@LazySingleton()
class LoginUser {
  final AuthRepository repository;
  LoginUser(this.repository);

  Future<Either<Failure, AuthResponse>> call({
    required String email,
    required String password,
  }) async {
    // Collect errors in a map
    final errors = <String, String?>{'email': null, 'password': null};

    // Email validation
    if (email.isEmpty) {
      errors['email'] = 'This field is required';
    } else {
      final emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
      if (!emailRegex.hasMatch(email)) {
        errors['email'] = 'Enter a valid email address';
      }
    }

    // Password validation
    if (password.isEmpty) {
      errors['password'] = 'This field is required';
    } else if (password.length < 8) {
      errors['password'] = 'Password must be at least 8 characters long';
    }

    // If there are any errors, return Left with DefaultException
    if (errors.values.any((element) => element != null)) {
      return Left(
        DefaultException(
          prettyMessage: "Ensure to input valid data",
          devMessage: 'Validation failed for login',
          data: errors,
        ),
      );
    }

    // All validations passed, call repository
    return repository.login(email: email, password: password);
  }
}
