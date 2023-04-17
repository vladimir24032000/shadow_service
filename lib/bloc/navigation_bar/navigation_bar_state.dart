part of 'navigation_bar_bloc.dart';

enum NavigationBarItems { settings, measurement, profile }

@freezed
class NavigationBarState with _$NavigationBarState {
  const factory NavigationBarState({
    required NavigationBarItems navigationBarItem,
  }) = _NavigationBarState;
}
