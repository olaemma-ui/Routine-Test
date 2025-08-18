class Environment {
  /// This variable holds the current running flavor of the app
  static EnvProcess? environment;

  /// This returns the current running build variant
  static EnvProcess? get currentEnvironment => environment;

}

enum EnvProcess {
  production,
  development,
  stagging,
}
