part of 'package:lotel/NavigationBar/NavigationBar.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];
  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350.0,
        child: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return Column(
              children: [
                NavBarItem(
                  icon: Feather.home,
                  active: selected[0],
                  touched: () {
                    setState(() {
                      select(0);
                    });
                  },
                ),
                if (state.main != MainSpace.welcome) NavBarItem(
                  icon: Feather.shopping_bag,
                  active: selected[1],
                  touched: () {
                    setState(() {
                      select(1);
                    });
                  },
                ),
                if (state.main != MainSpace.welcome) NavBarItem(
                  icon: Feather.credit_card,
                  active: selected[2],
                  touched: () {
                    setState(() {
                      select(2);
                    });
                  },
                ),
                if (state.main != MainSpace.welcome) NavBarItem(
                  icon: Feather.message_square,
                  active: selected[3],
                  touched: () {
                    setState(() {
                      select(3);
                    });
                  },
                ),
                if (state.main != MainSpace.welcome) NavBarItem(
                  icon: Feather.settings,
                  active: selected[4],
                  touched: () {
                    setState(() {
                      select(4);
                    });
                  },
                ),
              ],
            );
          },
        ));
  }
}
