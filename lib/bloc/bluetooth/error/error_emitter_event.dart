part of 'error_emitter_bloc.dart';

@freezed
class _ErrorEmitterEvent<T> with _$_ErrorEmitterEvent<T> {
  const factory _ErrorEmitterEvent(T error) = __ErrorEmitterEvent<T>;
}
