import 'package:flutter/material.dart';
import 'package:lotel/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:lotel/Widgets/LightButton.dart';
import 'package:lotel/Widgets/LightTextField.dart';
import 'package:lotel/Widgets/RoundedRectangularSlider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:intl/intl.dart';
import 'dart:io';

part 'package:lotel/EditingSpace/GuestEditing/src/GuestEditor.dart';



class GuestEditing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: editorBackground,
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
            GuestEditor().pSymmetric(h: 16)
          ],
        ).scrollVertical(physics: BouncingScrollPhysics()),
      ),
    );
  }
}
