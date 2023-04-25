part of 'lock_screen_cubit.dart';

@freezed
class LockScreenState with _$LockScreenState {
  const factory LockScreenState.preparing() = Preparing;

  const factory LockScreenState.hasPin({required String pin}) = HasPin;

  const factory LockScreenState.createPin() = CreatePin;
}
