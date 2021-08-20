import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'tornado_remote.dart';
import 'tata_remote.dart';
import 'about.dart';

class FanList extends StatelessWidget {
  static const String id = 'Fan_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'Fan List Remotes',
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
                    itemTitle: 'Tornado',
                    itemIcon: Icons.air_rounded,
                    destination: () =>
                        Navigator.pushNamed(context, TornadoRemote.id),
                  ),
                  MainMenuItems(
                    itemTitle: 'Tata',
                    itemIcon: Icons.air_rounded,
                    destination: () =>
                        Navigator.pushNamed(context, TataRemote.id),
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
