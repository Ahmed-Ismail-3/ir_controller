import 'package:flutter/material.dart';
import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ir_controller/resources/constants.dart';
import 'main_menu.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'welcome_page';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(milliseconds: 1500),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
          MainMenu.id, (Route<dynamic> route) => false),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: kWhiteColor,
        body: Center(
          child: Bounce(
            duration: Duration(milliseconds: 1000),
            child: SvgPicture.asset(
              'images/remote.svg',
              semanticsLabel: 'App Logo',
            ),
          ),
        ),
      ),
    );
  }
}
