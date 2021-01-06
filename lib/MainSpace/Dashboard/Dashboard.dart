import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotel/MainSpace/Dashboard/src/ProgressCard.dart';
import 'package:lotel/MainSpace/Dashboard/src/ProjectStatisticsCards.dart';
import 'package:lotel/MainSpace/Dashboard/src/SubHeader.dart';
import 'package:lotel/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:lotel/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:velocity_x/velocity_x.dart';
part 'package:lotel/MainSpace/Dashboard/src/RoomItem.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: BlocBuilder<DashboardBloc, DashboardState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30.0, top: 25.0),
                  child: Text(
                    'Stats',
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  width: MediaQuery.of(context).size.width * 0.62,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProgressCard(
                          color: Color(0xffFF4C60),
                          text: 'Rooms',
                          percentComplete: '34%',
                          progressIndicatorColor: Colors.redAccent[100],
                          icon: Icons.meeting_room,
                          total: '1000'),
                      ProgressCard(
                          color: Color(0xff6C6CE5),
                          text: 'Goods',
                          progressIndicatorColor: Colors.blue[200],
                          icon: Icons.fastfood,
                          total: '500'),
                      ProgressCard(
                          color: Color(0xffFAAA1E),
                          text: 'Expenses',
                          progressIndicatorColor: Colors.amber[200],
                          icon: Icons.money,
                          total: '100'),
                    ],
                  ),
                ),
                SubHeader(
                  title: 'Rooms',
                  trailing: IconButton(
                    icon: Icon(
                      Icons.add_box_rounded,
                      color: Color(0xff333951),
                      size: 18,
                    ),
                    onPressed: () {
                      context
                          .read<NavigationBloc>()
                          .add(NavigationEvent.newRoom());
                    },
                  ),
                ),
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: state.rooms.length,
                  itemBuilder: (context, index) {
                    return RoomItem(
                      color: roomColor(state.rooms[index]['vacancy']),
                      number: state.rooms[index]['number'],
                      description: state.rooms[index]['description'],
                      members: state.rooms[index]['members'].toString(),
                      duration: state.rooms[index]['duration'].toString(),
                      vacancy:
                          state.rooms[index]['vacancy'] ? "Vacant" : "Occupied",
                      guestID: state.rooms[index]['guestID'],
                    );
                  },
                ).h(300),
                SubHeader(title: 'Project Statistics', trailing: Container()),
                ProjectStatisticsCards(),
                20.heightBox
              ],
            ).scrollVertical(physics: BouncingScrollPhysics());
          },
        ),
      ),
    );
  }

  Color roomColor(bool vacant) {
    if (vacant)
      return Colors.green;
    else
      return Colors.blue;
  }
}
