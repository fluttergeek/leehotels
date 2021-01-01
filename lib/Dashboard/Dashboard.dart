import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotel/Dashboard/src/ProgressCard.dart';
import 'package:lotel/Dashboard/src/ProjectStatisticsCards.dart';
import 'package:lotel/Dashboard/src/RoomItem.dart';
import 'package:lotel/Dashboard/src/SubHeader.dart';
import 'package:lotel/Dashboard/src/Tabs.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        color: Colors.white,
        child: Column(
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
                  onPressed: () {}),
            ),
            RoomItem(
              color: Colors.green,
              number: '1',
              description: 'Deluxe',
              members: '1 guest',
              duration: '2 days',
              vacancy: 'Vacant',
            ),
            RoomItem(
              color: Colors.amber,
              description: 'Executive',
              number: '2',
              members: '2 guest',
              duration: '4 days',
              vacancy: 'Reserved',
            ),
            RoomItem(
              color: Colors.red,
              description: 'Standard',
              number: '3',
              members: '4 guest',
              duration: '1 days',
              vacancy: 'Occupied',
            ),
            SubHeader(title: 'Project Statistics', trailing: Container()),
            ProjectStatisticsCards(),
          ],
        ),
      ),
    );
  }
}
