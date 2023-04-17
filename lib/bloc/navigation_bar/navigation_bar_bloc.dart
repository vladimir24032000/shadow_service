import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:service_app/bloc/logging_bloc.dart';
import 'package:service_app/core/loggers/logger.dart';

part 'navigation_bar_event.dart';
part 'navigation_bar_state.dart';
part 'navigation_bar_bloc.freezed.dart';

@lazySingleton
class NavigationBarBloc
    extends LoggingBloc<NavigationBarEvent, NavigationBarState> {
  NavigationBarBloc()
      : super(
            const NavigationBarState(
                navigationBarItem: NavigationBarItems.measurement),
            loggerName: LoggerNames.navigationBarBloc) {
    on<NavigationBarEvent>(
      (event, emit) => event.map(
        changeTab: (e) => emit(
          state.copyWith(navigationBarItem: NavigationBarItems.values[e.index]),
        ),
      ),
    );
  }
}
