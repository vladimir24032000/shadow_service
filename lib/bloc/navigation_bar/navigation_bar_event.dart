part of 'navigation_bar_bloc.dart';

@freezed
class NavigationBarEvent with _$NavigationBarEvent {
  const factory NavigationBarEvent.changeTab(int index) = _ChangeTab;
}
