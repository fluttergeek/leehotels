import 'package:flutter/material.dart';
import 'package:lotel/CalendarSpace/src/CalendarSection.dart';
import 'package:lotel/CalendarSpace/src/MeetingsSection.dart';
import 'package:lotel/CalendarSpace/src/TopContainer.dart';
import 'package:lotel/Widgets/LightTextField.dart';
import 'package:velocity_x/velocity_x.dart';

class CalendarSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xffF7F7FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            // TopContainer(),
            // CalendarSection(),
            // MeetingsSection(),
            16.heightBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "New Guest"
                    .text
                    .xl
                    .bold
                    .color(Color(0xff333951))
                    .make()
                    .pOnly(left: 5),
                16.heightBox,
                LightTextField(
                    label: 'Name',
                    prefixIcon: Icons.person,
                    fillColor: Colors.white),
                16.heightBox,
                LightTextField(
                    label: 'Room',
                    prefixIcon: Icons.meeting_room,
                    fillColor: Colors.white),
                16.heightBox,
                LightTextField(
                    label: 'Date In',
                    prefixIcon: Icons.person,
                    fillColor: Colors.white),
                16.heightBox,
                LightTextField(
                    label: 'Date Out',
                    prefixIcon: Icons.person,
                    fillColor: Colors.white),
              ],
            ).pSymmetric(h: 16)
          ],
        ),
      ),
    );
  }
}
