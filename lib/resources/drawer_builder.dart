import 'package:flutter/material.dart';
import 'button_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/screens/main_menu.dart';
import 'package:ir_controller/screens/universal_remote.dart';
import 'package:ir_controller/screens/carrozzeria_remote.dart';
import 'package:ir_controller/screens/mp3_decoder__remote.dart';
import 'package:ir_controller/screens/panasound_remote.dart';
import 'package:ir_controller/screens/tornado_remote.dart';
import 'package:ir_controller/screens/tata_remote.dart';
import 'package:ir_controller/screens/about.dart';
import 'package:flutter/services.dart';

class DrawerBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: kDrawerColor,
              ),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  children: [
                    TextButtonWidget(
                      buttonCaption: 'IR Remote Controller',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: 24.0,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    IconButtonWidget(
                      iconSymbol: Icons.settings_remote_rounded,
                      iconColour: kBlackColor,
                      iconSize: 30.0,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushNamed(context, MainMenu.id);
              },
            ),
            ListTile(
              title: const Text('LG TV'),
              leading: Icon(Icons.tv),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UniversalRemote(
                      remoteTitle: 'LG',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Jac TV'),
              leading: Icon(Icons.tv),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UniversalRemote(
                      remoteTitle: 'Jac',
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Strong Receiver'),
              leading: Icon(Icons.settings_input_antenna_rounded),
              onTap: () {
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
            ListTile(
              title: const Text('SunPlus Receiver'),
              leading: Icon(Icons.settings_input_antenna_rounded),
              onTap: () {
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
            ListTile(
              title: const Text('Carrozzeria Radio'),
              leading: Icon(Icons.radio),
              onTap: () {
                Navigator.pushNamed(context, CarrozzeriaRemote.id);
              },
            ),
            ListTile(
              title: const Text('MP3 Decoder Board'),
              leading: Icon(Icons.radio),
              onTap: () {
                Navigator.pushNamed(context, MP3DecoderRemote.id);
              },
            ),
            ListTile(
              title: const Text('Panasound Radio'),
              leading: Icon(Icons.radio),
              onTap: () {
                Navigator.pushNamed(context, PanasoundRemote.id);
              },
            ),
            ListTile(
              title: const Text('Tornado Fan'),
              leading: Icon(Icons.air),
              onTap: () {
                Navigator.pushNamed(context, TornadoRemote.id);
              },
            ),
            ListTile(
              title: const Text('Tata Fan'),
              leading: Icon(Icons.air),
              onTap: () {
                Navigator.pushNamed(context, TataRemote.id);
              },
            ),
            ListTile(
              title: const Text('About'),
              leading: Icon(Icons.info_rounded),
              onTap: () {
                Navigator.pushNamed(context, About.id);
              },
            ),
            ListTile(
              title: const Text('Exit'),
              leading: Icon(Icons.exit_to_app_outlined),
              onTap: () {
                SystemNavigator.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
