// ignore: library_prefixes
import 'dart:developer' as Log;

class Logger {
  final String _name;
  final int level;

  const Logger(this._name, [this.level = 0]);

  void call(Object? message, {error, stackTrace}) {
    Log.log(
      '$message ${error != null ? ': $error' : ''}',
      error: error,
      stackTrace: stackTrace,
      name: '${DateTime.now()} $_name',
      level: level,
    );
    // }
  }
}

abstract class LoggerNames {
  static const String navigationBarBloc = 'NavigationBarBloc';
}
