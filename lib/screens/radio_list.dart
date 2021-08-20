import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'carrozzeria_remote.dart';
import 'mp3_decoder__remote.dart';
import 'panasound_remote.dart';
import 'about.dart';

class RadioList extends StatelessWidget {
  static const String id = 'radio_list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'Radio List Remotes',
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
                    itemTitle: 'Carrozzeria',
                    itemIcon: Icons.radio,
                    destination: () =>
                        Navigator.pushNamed(context, CarrozzeriaRemote.id),
                  ),
                  MainMenuItems(
                    itemTitle: 'MP3 Decoder Board',
                    itemIcon: Icons.radio,
                    destination: () =>
                        Navigator.pushNamed(context, MP3DecoderRemote.id),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  MainMenuItems(
                    itemTitle: 'Panasound',
                    itemIcon: Icons.radio,
                    destination: () =>
                        Navigator.pushNamed(context, PanasoundRemote.id),
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
