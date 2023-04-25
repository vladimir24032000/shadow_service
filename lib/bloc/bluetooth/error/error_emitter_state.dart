part of 'error_emitter_bloc.dart';

@freezed
class ErrorEmitterState<T> with _$ErrorEmitterState<T> {
  const factory ErrorEmitterState.initial() = _Initial<T>;
  const factory ErrorEmitterState.error(T error) = _Error<T>;

  // TODO(dev): revisit this. should we re-emit on the same error?
  @override
  bool operator ==(Object other) => identical(this, other);
}
