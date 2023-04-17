import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_emitter_bloc.freezed.dart';
part 'error_emitter_event.dart';
part 'error_emitter_state.dart';

class _ErrorEmitterBloc<T>
    extends Bloc<_ErrorEmitterEvent<T>, ErrorEmitterState<T>> {
  _ErrorEmitterBloc() : super(const ErrorEmitterState.initial()) {
    on<_ErrorEmitterEvent<T>>(
      (event, emit) => emit(ErrorEmitterState<T>.error(event.error)),
    );
  }
}

mixin ErrorEmitter<State, Error> on BlocBase<State> {
  final _errorBloc = _ErrorEmitterBloc<Error>();
  Stream<ErrorEmitterState<Error>> get errorStream => _errorBloc.stream;

  @protected
  void emitError(Error error) {
    if (isClosed) return;
    _errorBloc.add(_ErrorEmitterEvent<Error>(error));
  }

  @override
  Future<void> close() {
    _errorBloc.close();
    return super.close();
  }

  Future<void> onNextState(
    void Function(State state) onNextState,
    void Function(Error? error) onErrorEmission,
  ) async {
    StreamSubscription<State>? stateSub;
    StreamSubscription<ErrorEmitterState<Error>>? errorSub;
    stateSub = stream.listen((state) {
      onNextState(state);
      stateSub?.cancel();
      errorSub?.cancel();
    });
    errorSub = errorStream.listen((error) {
      onErrorEmission(error.mapOrNull(error: (state) => state.error));
      stateSub?.cancel();
      errorSub?.cancel();
    });

    await Stream.fromFutures(
      [
        stream.first,
        errorStream.first,
      ],
    ).first;
  }
}
