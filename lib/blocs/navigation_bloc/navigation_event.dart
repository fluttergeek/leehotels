part of 'navigation_bloc.dart';

@freezed
abstract class NavigationEvent with _$NavigationEvent {
    const factory NavigationEvent.goToDashboard() = _GoToDashboard;
    const factory NavigationEvent.signIn({String hotel, String password}) = _SignIn;
    const factory NavigationEvent.signOut() = _GoToWelcome;
}