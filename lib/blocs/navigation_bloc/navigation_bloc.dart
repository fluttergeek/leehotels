import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lotel/Login/UserRepository.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'navigation_state.dart';
part 'navigation_event.dart';
part 'navigation_bloc.freezed.dart';

enum MainSpace { dashboard, welcome }

enum EditingSpace { login, newGuest, editGuest }

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  UserRepository userRepo;
  NavigationBloc(this.userRepo) : super(NavigationState.initial()) {
    if (userRepo.isSignedIn()) {
      this.add(NavigationEvent.goToDashboard());
    } else {
      print("not signed in");
    }
  }

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent gEvent) async* {
    yield* gEvent.map(goToDashboard: (_GoToDashboard e) async* {
      yield state.copyWith(
          main: MainSpace.dashboard, editing: EditingSpace.newGuest);
    }, signOut: (_GoToWelcome value) async* {
      await userRepo.signOut();
      yield state.copyWith(
          main: MainSpace.welcome, editing: EditingSpace.login);
    }, signIn: (_SignIn e) async* {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("hotel", e.hotel);
      var user = await userRepo.signInUser(e.password);
      if (user != null)
        yield state.copyWith(
            main: MainSpace.dashboard, editing: EditingSpace.newGuest);
    });
  }
}
