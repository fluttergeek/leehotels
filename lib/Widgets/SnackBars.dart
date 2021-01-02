import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

snackBar(String title, String message) {
  if (GetPlatform.isAndroid) {
    Get.snackbar(title, message, snackPosition: SnackPosition.BOTTOM);
    Flushbar(
      message: message,
      icon: Icon(
        Icons.info_outline,
        size: 28.0,
        color: title.contains("Success") ? Colors.green[300] : Colors.red[300],
      ),
      duration: 3.seconds,
      leftBarIndicatorColor:
          title.contains("Success") ? Colors.green[300] : Colors.red[300],
    )..show(Get.context);
  } else if (GetPlatform.isWeb) {
    // showToast(
    //   message,
    //   position: ToastPosition.bottom,
    //   backgroundColor: Colors.black.withOpacity(0.8),
    //   radius: 13.0,
    //   textPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //   textStyle: TextStyle(fontSize: 18.0, color: Colors.white),
    //   animationBuilder: Miui10AnimBuilder(),
    // );
  }
}

snackError(message) {
  Flushbar(
    message: (message.contains("]"))
        ? message.substring(message.indexOf("]") + 2)
        : message.toString(),
    backgroundColor: Colors.red,
    icon: Icon(
      Icons.error,
      size: 28.0,
      color: Colors.white,
    ),
    boxShadows: [
      BoxShadow(
        color: Colors.red[800],
        offset: Offset(0.0, 2.0),
        blurRadius: 3.0,
      )
    ],
    duration: 3.seconds,
  )..show(Get.context);
}

snackSuccess(message) {
  Flushbar(
    message: message.toString(),
    backgroundColor: Colors.lightGreen,
    icon: Icon(
      Icons.check_circle_outline,
      size: 28.0,
      color: Colors.lightGreen[200],
    ),
    backgroundGradient: LinearGradient(colors: [Colors.blue, Colors.teal]),
    boxShadows: [
      BoxShadow(
        color: Colors.blue[800],
        offset: Offset(0.0, 2.0),
        blurRadius: 3.0,
      )
    ],
    duration: 3.seconds,
  )..show(Get.context);
}
