import 'package:supabase_flutter/supabase_flutter.dart';
import 'exception.dart';
import 'exception_message.dart';

/// Handles exceptions thrown by Supabase operations and converts them into
/// application-specific [Failure] objects for consistent error handling.
///
/// This class provides a static method [handleException] that inspects the type
/// of error received from Supabase (such as [PostgrestException] or [AuthException])
/// and maps it to a corresponding [Failure] subclass with user-friendly and developer
/// messages, status codes, and stack traces.
///
/// Usage:
/// ```dart
/// try {
///   // Supabase operation
/// } catch (error) {
///   final failure = SupabaseExceptionHandler.handleException(error);
///   // Handle failure (e.g., show error message, log details)
/// }
/// ```
/// This class helps centralize error handling logic for Supabase-related failures,
/// making it easier to display appropriate messages to users and log detailed
/// information for developers.
class SupabaseExceptionHandler {
  /// - [handleException]: Accepts any error object and returns a [Failure] instance
  ///   based on the error type. 
  ///   If the error is not recognized, returns a [DefaultException].
  static Failure handleException(dynamic error) {
    if (error is PostgrestException) {
      return SupabaseDbFailure(
        prettyMessage: _getErrorMessage(error.message),
        devMessage: '${error.message} - ${error.hint}',
        statusCode: error.code,
        data: error.details,
        stackTrace: StackTrace.current,
      );
    }

    if (error is AuthException) {
      return SupabaseAuthFailure(
        prettyMessage: _getErrorMessage(error.message),
        devMessage: error.message,
        statusCode: error.statusCode,
        stackTrace: StackTrace.current,
      );
    }

    return DefaultException(
      prettyMessage: ErrorMessages.somethingWentWrong,
      devMessage: error.toString(),
      stackTrace: StackTrace.current,
    );
  }

  /// - [_getErrorMessage]: Internal helper to extract a user-friendly error message,
  ///   falling back to a generic message if none is provided.
  static String _getErrorMessage(String? message) =>
      message?.toString() ?? ErrorMessages.somethingWentWrong;
}
