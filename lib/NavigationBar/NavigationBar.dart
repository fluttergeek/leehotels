import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:lotel/NavigationBar/src/CompanyName.dart';
import 'package:lotel/NavigationBar/src/NavBarItem.dart';
import 'package:lotel/blocs/navigation_bloc/navigation_bloc.dart';
part 'package:lotel/NavigationBar/src/NavBar.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 100.0,
        color: Color(0xff333951),
        child: Stack(
          children: [
            CompanyName(),
            Align(
              alignment: Alignment.center,
              child: NavBar(),
            ),
            BlocBuilder<NavigationBloc, NavigationState>(
              builder: (context, state) {
                return state.main != MainSpace.welcome
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: NavBarItem(
                          touched: () {
                            context
                                .read<NavigationBloc>()
                                .add(NavigationEvent.signOut());
                          },
                          icon: Feather.log_out,
                          active: false,
                        ),
                      )
                    : Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
