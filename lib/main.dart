import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotel/Dashboard/Dashboard.dart';
import 'package:lotel/NavigationBar/NavigationBar.dart';
import 'package:lotel/CalendarSpace/CalendarSpace.dart';
import 'package:lotel/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
            create: (BuildContext context) => NavigationBloc()),
      ],
      child: GetMaterialApp(
        opaqueRoute: false,
        title: "Lotel",
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.latoTextTheme(),
          scaffoldBackgroundColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Stack(
            children: [
              NavigationBar(),
              DashBoard(),
              CalendarSpace(),
            ],
          ).wh(Get.width, Get.height),
        ),
      ),
    );
  }
}
