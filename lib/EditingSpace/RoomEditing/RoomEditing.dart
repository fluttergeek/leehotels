import 'package:flutter/material.dart';
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
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoomEditing extends StatefulWidget {
  final Mode mode;
  RoomEditing(this.mode);

  @override
  _RoomEditingState createState() => _RoomEditingState();
}

class _RoomEditingState extends State<RoomEditing> {
  TextEditingController numControl, priceControl, descControl, capacityControl;
  String id;
  @override
  void initState() {
    super.initState();
    DashboardState state = BlocProvider.of<DashboardBloc>(context).state;
    if (widget.mode == Mode.edit) id = state.roomInFocus['id'];
    numControl =
        TextEditingController(text: state.roomInFocus['number'].toString());
    priceControl =
        TextEditingController(text: state.roomInFocus['price'].toString());
    descControl = TextEditingController(
        text: state.roomInFocus['description'].toString());
    capacityControl =
        TextEditingController(text: state.roomInFocus['capacity'].toString());
  }

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.widget.mode == Mode.add ? 'New Room' : 'Edit Room',
                  style: GoogleFonts.quicksand(
                    color: purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ).pOnly(left: 5),
                16.heightBox,
                LightTextField(
                  label: 'Room Number (Ex. 1)',
                  prefixIcon: Feather.hash,
                  fillColor: Colors.white,
                  controller: numControl,
                  numeric: true,
                ),
                16.heightBox,
                LightTextField(
                    label: 'Description',
                    prefixIcon: Feather.type,
                    controller: descControl,
                    fillColor: Colors.white),
                16.heightBox,
                LightTextField(
                    label: 'Price',
                    prefixIcon: MaterialCommunityIcons.currency_php,
                    controller: priceControl,
                    fillColor: Colors.white),
                16.heightBox,
                LightTextField(
                    label: 'Capacity',
                    prefixIcon: Feather.users,
                    controller: capacityControl,
                    fillColor: Colors.white),
                16.heightBox,
                LightButton(
                  color: purple,
                  textColor: Colors.white,
                  text: widget.mode == Mode.add ? 'Add' : 'Edit',
                  onPressed: () {
                    if (widget.mode == Mode.add)
                      context.read<DashboardBloc>().add(
                            DashboardEvent.addRoom(
                              number: numControl.text,
                              description: descControl.text,
                              price: double.parse(priceControl.text),
                              capacity: int.parse(capacityControl.text),
                            ),
                          );
                    else if (widget.mode == Mode.edit)
                      context.read<DashboardBloc>().add(
                            DashboardEvent.editRoom(
                              id: id,
                              number: numControl.text,
                              description: descControl.text,
                              price: double.parse(priceControl.text),
                              capacity: int.parse(capacityControl.text),
                            ),
                          );
                  },
                ),
                20.heightBox
              ],
            ).pSymmetric(h: 16)
          ],
        ).scrollVertical(physics: BouncingScrollPhysics()),
      ),
    );
  }
}
