import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:lotel/EditingSpace/Login/UserRepository.dart';
import 'package:lotel/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'navigation_state.dart';
part 'navigation_event.dart';
part 'navigation_bloc.freezed.dart';

enum MainSpace { dashboard, welcome, loading }

enum EditingSpace { login, newGuest, editGuest, newRoom, editRoom, loading }

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  UserRepository userRepo;
  NavigationBloc({
    this.userRepo,
  }) : super(NavigationState.initial()) {
    Future.delayed(Duration(seconds: 1)).then((_) {
      if (userRepo.isSignedIn()) {
        this.add(NavigationEvent.goToDashboard());
      } else {
        print("not signed in");
      }
    });
  }

  @override
  Stream<NavigationState> mapEventToState(NavigationEvent gEvent) async* {
    yield* gEvent.map(
      // INFO DASHBOARD
      goToDashboard: (_GoToDashboard e) async* {
        yield state.copyWith(editing: EditingSpace.loading);
        yield state.copyWith(main: MainSpace.loading);
        await Future.delayed(Duration(milliseconds: 500));
        yield state.copyWith(
            main: MainSpace.dashboard, editing: EditingSpace.newRoom);
      },
      // REFRESH DASHBOARD
      refreshDashboard: (_RefreshDashboardOnly e) async* {
        yield state.copyWith(main: MainSpace.loading);
        await Future.delayed(Duration(milliseconds: 500));
        yield state.copyWith(main: MainSpace.dashboard);
      },
      // INFO SIGN IN
      signIn: (_SignIn e) async* {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("hotel", e.hotel);
        var user = await userRepo.signInUser(e.password);
        if (user != null) this.add(NavigationEvent.goToDashboard());
      },
      // INFO SIGN OUT
      signOut: (_GoToWelcome value) async* {
        await userRepo.signOut();
        yield state.copyWith(
            main: MainSpace.welcome, editing: EditingSpace.login);
      },
      // INFO EDIT ROOM
      editRoom: (_EditRoom e) async* {
        yield state.copyWith(editing: EditingSpace.loading);
        await Future.delayed(Duration(milliseconds: 500));
        yield state.copyWith(editing: EditingSpace.editRoom);
      },
      // INFO NEW ROOM
      newRoom: (_NewRoom value) async* {
        yield state.copyWith(editing: EditingSpace.loading);
        await Future.delayed(Duration(milliseconds: 500));
        yield state.copyWith(editing: EditingSpace.newRoom);
        BlocProvider.of<DashboardBloc>(Get.context)
            .add(DashboardEvent.roomInFocus("-1"));
      },
      // INFO EDIT GUEST
      editGuest: (_EditGuest value) async* {
        yield state.copyWith(editing: EditingSpace.loading);
        await Future.delayed(Duration(milliseconds: 500));
        yield state.copyWith(editing: EditingSpace.editGuest);
      },
      // NEW GUEST
      newGuest: (_NewGuest value) async* {
        yield state.copyWith(editing: EditingSpace.loading);
        await Future.delayed(Duration(milliseconds: 500));
        yield state.copyWith(editing: EditingSpace.newGuest);
      },
    );
  }
}
