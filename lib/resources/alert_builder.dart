import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/services.dart';

Alert buildAlert(BuildContext context) {
  return Alert(
    context: context,
    type: AlertType.error,
    title: "incompatible device",
    desc: "Sorry, Your Device Doesn't Have An IR Blaster.",
    buttons: [
      DialogButton(
        child: Text(
          "IGNORE",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () => Navigator.pop(context),
        color: Color.fromRGBO(0, 179, 134, 1.0),
      ),
      DialogButton(
        child: Text(
          "EXIT",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        onPressed: () => SystemNavigator.pop(),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(116, 116, 191, 1.0),
          Color.fromRGBO(52, 138, 199, 1.0),
        ]),
      ),
    ],
    closeFunction: () => Navigator.pop(context),
  );
}
