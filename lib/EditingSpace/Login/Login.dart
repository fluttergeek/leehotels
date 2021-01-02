import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotel/Widgets/LightButton.dart';
import 'package:lotel/Widgets/LightTextField.dart';
import 'package:lotel/constants.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_vector_icons/src/material_community_icons.dart';
import 'package:lotel/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum Hotels { serenity, dummy }

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Hotels _hotel = Hotels.serenity;
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xffF7F7FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: _hotel == Hotels.serenity
                        ? lightPurple
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0) //         <--- border radius here
                        )),
                child: RadioListTile<Hotels>(
                  activeColor:
                      _hotel == Hotels.serenity ? Colors.white : purple,
                  title: "Serenity"
                      .text
                      .color(_hotel == Hotels.serenity ? Colors.white : purple)
                      .bold
                      .make(),
                  value: Hotels.serenity,
                  groupValue: _hotel,
                  controlAffinity: ListTileControlAffinity.trailing,
                  onChanged: (Hotels value) {
                    setState(() {
                      _hotel = value;
                    });
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: _hotel == Hotels.dummy
                        ? lightPurple
                        : Colors.transparent,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0) //         <--- border radius here
                        )),
                child: RadioListTile<Hotels>(
                  activeColor: _hotel == Hotels.dummy ? Colors.white : purple,
                  title: "Dummy"
                      .text
                      .color(_hotel == Hotels.dummy ? Colors.white : purple)
                      .bold
                      .make(),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: Hotels.dummy,
                  groupValue: _hotel,
                  onChanged: (Hotels value) {
                    setState(() {
                      _hotel = value;
                    });
                  },
                ),
              ),
              50.heightBox,
              Text(
                'Login',
                style: GoogleFonts.quicksand(
                  color: purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ).pOnly(left: 5),
              25.heightBox,
              LightTextField(
                  label: 'Password',
                  controller: passwordController,
                  prefixIcon: MaterialCommunityIcons.onepassword,
                  fillColor: Colors.white,
                  obscureText: true),
              16.heightBox,
              LightButton(
                color: purple,
                textColor: Colors.white,
                text: 'Proceed',
                onPressed: () {
                  context.read<NavigationBloc>().add(NavigationEvent.signIn(
                      hotel: hotelString(_hotel),
                      password: passwordController.text));
                },
              ),
              200.heightBox
            ])
            .h(
              MediaQuery.of(context).size.height,
            )
            .pSymmetric(h: 16)
            .scrollVertical(physics: BouncingScrollPhysics()),
      ),
    );
  }

  String hotelString(Hotels hotel) {
    switch (hotel) {
      case Hotels.serenity:
        return "Serenity";
      case Hotels.dummy:
        return "Dummy";
      default:
        return "Serenity";
    }
  }
}
