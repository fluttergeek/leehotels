import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotel/Widgets/LightTextField.dart';
import 'package:velocity_x/velocity_x.dart';

class GuestEditingSpace extends StatelessWidget {
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
              height: 25.0,
            ),
            // TopContainer(),
            // CalendarSection(),
            // MeetingsSection(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Guest',
                  style: GoogleFonts.quicksand(
                    color: Color(0xff333951),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ).pOnly(left: 5),
                35.heightBox,
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
