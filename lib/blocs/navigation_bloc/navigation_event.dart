part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.goToDashboard() = _GoToDashboard;
  const factory NavigationEvent.refreshDashboard() = _RefreshDashboardOnly;
  const factory NavigationEvent.signIn({String hotel, String password}) =
      _SignIn;
  const factory NavigationEvent.signOut() = _GoToWelcome;
  // INFO CHANGE EDITING SPACE
  const factory NavigationEvent.newRoom() = _NewRoom;
  const factory NavigationEvent.editRoom() = _EditRoom;
  const factory NavigationEvent.editGuest() = _EditGuest;
}
