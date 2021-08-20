import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/ir_checker.dart';
import 'package:ir_controller/resources/constants.dart';
import 'tv_list.dart';
import 'receiver_list.dart';
import 'radio_list.dart';
import 'fan_list.dart';
import 'about.dart';

class MainMenu extends StatefulWidget {
  static const String id = 'main_menu';

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    irChecker(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'IR Remote Controller',
        barLeadingIcon: Icons.info_outline_rounded,
        onIconPressed: () {
          Navigator.pushNamed(context, About.id);
        },
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainMenuItems(
                    itemTitle: 'TV',
                    itemIcon: Icons.tv_rounded,
                    destination: () => Navigator.pushNamed(context, TVList.id),
                  ),
                  MainMenuItems(
                    itemTitle: 'Receiver',
                    itemIcon: Icons.radar_rounded,
                    destination: () =>
                        Navigator.pushNamed(context, ReceiverList.id),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MainMenuItems(
                    itemTitle: 'Radio',
                    itemIcon: Icons.radio,
                    destination: () =>
                        Navigator.pushNamed(context, RadioList.id),
                  ),
                  MainMenuItems(
                    itemTitle: 'Fan',
                    itemIcon: Icons.air_rounded,
                    destination: () => Navigator.pushNamed(context, FanList.id),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
