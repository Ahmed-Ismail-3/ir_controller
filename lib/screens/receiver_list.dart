import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'universal_remote.dart';
import 'about.dart';

class ReceiverList extends StatelessWidget {
  static const String id = 'receiver_list';
  void buttonPushed() {
    print('this works');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'Receiver List Remotes',
        barLeadingIcon: Icons.info_outline_rounded,
        onIconPressed: () => Navigator.pushNamed(context, About.id),
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
                    itemTitle: 'Strong',
                    itemIcon: Icons.radar_rounded,
                    destination: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UniversalRemote(
                            remoteTitle: 'Strong',
                          ),
                        ),
                      );
                    },
                  ),
                  MainMenuItems(
                    itemTitle: 'SunPlus',
                    itemIcon: Icons.radar_rounded,
                    destination: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UniversalRemote(
                            remoteTitle: 'SunPlus',
                          ),
                        ),
                      );
                    },
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
