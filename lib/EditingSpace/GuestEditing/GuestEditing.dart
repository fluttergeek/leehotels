import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lotel/Widgets/SnackBars.dart';
import 'package:lotel/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:lotel/constants.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotel/Widgets/LightButton.dart';
import 'package:lotel/Widgets/LightTextField.dart';
import 'package:lotel/Widgets/RoundedRectangularSlider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';
import 'package:intl/intl.dart';

part 'package:lotel/EditingSpace/GuestEditing/src/GuestEditor.dart';

class GuestEditing extends StatelessWidget {
  final Mode mode;
  GuestEditing(this.mode);
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
            GuestEditor(mode: this.mode).pSymmetric(h: 16)
          ],
        ).scrollVertical(physics: BouncingScrollPhysics()),
      ),
    );
  }
}
