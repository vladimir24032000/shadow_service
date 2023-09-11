sealed class ApiState {}

class InProgressApiState implements ApiState {}

class FailedApiState implements ApiState {
  final String message;

  FailedApiState(this.message);
}

class LoggedInApiState implements ApiState {}

class LoggedOutApiState implements ApiState {}
