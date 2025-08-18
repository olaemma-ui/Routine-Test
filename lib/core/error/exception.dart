// ignore_for_file: public_member_api_docs, sort_constructors_first

/// This class is the base failure class that default exception format
/// [prettyMessage] This message is displayed to the user
/// [devMessage] This message is logged in the terminal for the developer
/// [stackTrace] This is the stacktrace for the exception
/// [statusCode] This is the status statusCode of the exception
/// [Failure] Base Exception/error class will be extended by other classes
/// 
abstract class Failure {
  ///[prettyMessage] UI message
  final String prettyMessage;

  ///[devMessage] Developr message
  final String devMessage;

  ///[stackTrace] error stackTrace
  final StackTrace stackTrace;

  final dynamic data;
  Failure({
    required this.prettyMessage,
    required this.devMessage,
    this.data,
    this.stackTrace = StackTrace.empty,
  });
}

// Handles errors coming from Supabase Auth
final class SupabaseAuthFailure extends Failure {
  SupabaseAuthFailure({
    required super.prettyMessage,
    required super.devMessage,
    required this.statusCode,
    super.data,
    super.stackTrace,
  });

  final String? statusCode;
}

// Handles errors from Supabase REST / Postgres
final class SupabaseDbFailure extends Failure {
  SupabaseDbFailure({
    required super.prettyMessage,
    required super.devMessage,
    super.data,
    super.stackTrace,
    required this.statusCode,
  });

  final String? statusCode;
}

/// This exception is thrown when Supabase returns a diff statuscode.
final class DefaultException extends Failure {
  /// This is the constructor of the [DefaultException]  class.
    DefaultException({
    required super.prettyMessage,
    required super.devMessage,
    super.data,
    super.stackTrace = StackTrace.empty,
  });
}
