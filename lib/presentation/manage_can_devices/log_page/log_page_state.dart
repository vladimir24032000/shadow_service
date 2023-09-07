sealed class LogPageState {}

class InitLogPageState implements LogPageState {}

class InProgressLogPageState implements LogPageState {}

class FailedLogPageState implements LogPageState {
  final String message;

  FailedLogPageState(this.message);
}
