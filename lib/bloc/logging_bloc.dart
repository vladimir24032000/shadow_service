import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:service_app/core/loggers/logger.dart';

class LoggingBloc<Event, State> extends Bloc<Event, State> {
  LoggingBloc(State initialState, {required this.loggerName})
      : log = Logger(loggerName),
        super(initialState);

  final String loggerName;
  @protected
  final Logger log;

  @override
  void onTransition(Transition<Event, State> transition) {
    super.onTransition(transition);
    log('new state: ${transition.nextState.toString()}');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    log('Error: $error');
    // FirebaseCrashlytics.instance.recordError(error, stackTrace);
    super.onError(error, stackTrace);
  }
}
