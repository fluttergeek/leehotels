import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 100.0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.63,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.heightBox,
              "Welcome".text.xl5.bold.make(),
              20.heightBox,
              "Please login to enter dashboard".text.xl3.make()
            ],
          ).h(500),
        ),
      ),
    );
  }
}
