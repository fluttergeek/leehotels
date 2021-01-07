import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lotel/EditingSpace/Loading.dart';
import 'package:lotel/EditingSpace/RoomEditing/RoomEditing.dart';
import 'package:lotel/MainSpace/Dashboard/Dashboard.dart';
import 'package:lotel/MainSpace/Dashboard/WelcomeOnly.dart';
import 'package:lotel/services/repositories/GuestRepository.dart';
import 'package:lotel/services/repositories/RoomRepository.dart';
import 'package:lotel/EditingSpace/GuestEditing/GuestEditing.dart';
import 'package:lotel/EditingSpace/Login/UserRepository.dart';
import 'package:lotel/MainSpace/Loading.dart';
import 'package:lotel/NavigationBar/NavigationBar.dart';
import 'package:lotel/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:lotel/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:lotel/EditingSpace/Login/Login.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NavigationBloc>(
            create: (BuildContext context) =>
                NavigationBloc(userRepo: UserRepository())),
        BlocProvider<DashboardBloc>(
            create: (BuildContext context) =>
                DashboardBloc(roomRepo: RoomRepo(), guestRepo:GuestRepo())),
      ],
      child: GetMaterialApp(
        opaqueRoute: false,
        title: "Lotel",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.quicksandTextTheme(),
          scaffoldBackgroundColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return Scaffold(
              body: Stack(
                children: [
                  NavigationBar(),

                  // INFO MAIN SPACE
                  if (state.main == MainSpace.dashboard)
                    DashBoard()
                  else if (state.main == MainSpace.welcome)
                    WelcomeOnly()
                  else if (EditingSpace.loading == state.editing)
                    LoadingMain(),
                  // INFO EDITING SPACE
                  if (state.editing == EditingSpace.newGuest)
                    GuestEditing(Mode.add)
                  else if (state.editing == EditingSpace.editGuest)
                    GuestEditing(Mode.edit)
                  else if (EditingSpace.login == state.editing)
                    Login()
                  else if (EditingSpace.newRoom == state.editing)
                    RoomEditing(Mode.add)
                  else if (EditingSpace.editRoom == state.editing)
                    RoomEditing(Mode.edit)
                  else if (EditingSpace.loading == state.editing)
                    LoadingEditor()
                ],
              ).wh(Get.width, Get.height),
            );
          },
        ),
      ),
    );
  }
}
