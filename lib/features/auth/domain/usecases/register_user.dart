import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/auth/data/repository/auth_repo.dart';

@LazySingleton()
class RegisterUser {
  final AuthRepository repository;
  RegisterUser(this.repository);

  Future<Either<Failure, AuthResponse>> call({
    required String email,
    required String password,
    required String fullname,
  }) async {
    // Collect errors in a map
    final errors = <String, String?>{
      'email': null,
      'fullname': null,
      'password': null,
    };

    // Full name validation
    if (fullname.isEmpty) {
      errors['fullname'] = 'This field is required';
      log('Full name error: ${fullname.trim().split(' ').length}');
    } else if (fullname.trim().split(' ').length < 2 || fullname.length <= 2) {
      errors['fullname'] = 'Please enter your full name';
    }
    // Email validation
    if (email.isEmpty) {
      errors['email'] = 'This field is required';
    } else {
      // Allow domain lengths > 4, e.g. ".studio" or ".company"
      final emailRegex = RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$',
        caseSensitive: false,
      );
      if (!emailRegex.hasMatch(email)) {
        errors['email'] = 'Enter a valid email address';
      }
    }

    // Password validation
    if (password.isEmpty) {
      errors['password'] = 'This field is required';
    } else if (password.length < 8) {
      errors['password'] = 'Password must be at least 8 characters long';
    } else {
      final passwordRegex = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$%^&*(),.?":{}|<>]).{8,}$',
      );
      if (!passwordRegex.hasMatch(password)) {
        errors['password'] =
            'Password must include:\n - Uppercase\n - Lowercase\n - Number\n - Special character';
      }
    }

    // If there are any errors, return Left with DefaultException
    if (errors.values.any((element) => element != null)) {
      return Left(
        DefaultException(
          prettyMessage: "Validation failed for registration",
          devMessage: 'Validation failed for registration',
          data: errors,
        ),
      );
    }

    // All validations passed, call repository
    return repository.register(
      email: email,
      password: password,
      fullName: fullname,
    );
  }
}
