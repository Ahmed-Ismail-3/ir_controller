import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/welcome_page.dart';
import 'screens/main_menu.dart';
import 'screens/tv_list.dart';
import 'screens/receiver_list.dart';
import 'screens/radio_list.dart';
import 'screens/fan_list.dart';
import 'screens/universal_remote.dart';
import 'screens/jac_remote.dart';
import 'screens/lg_remote.dart';
import 'screens/strong_remote.dart';
import 'screens/sunplus_remote.dart';
import 'screens/carrozzeria_remote.dart';
import 'screens/mp3_decoder__remote.dart';
import 'screens/panasound_remote.dart';
import 'screens/tornado_remote.dart';
import 'screens/tata_remote.dart';
import 'screens/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        MainMenu.id: (context) => MainMenu(),
        TVList.id: (context) => TVList(),
        ReceiverList.id: (context) => ReceiverList(),
        RadioList.id: (context) => RadioList(),
        FanList.id: (context) => FanList(),
        UniversalRemote.id: (context) => UniversalRemote(),
        LGRemote.id: (context) => LGRemote(),
        JacRemote.id: (context) => JacRemote(),
        StrongRemote.id: (context) => StrongRemote(),
        SunplusRemote.id: (context) => SunplusRemote(),
        CarrozzeriaRemote.id: (context) => CarrozzeriaRemote(),
        MP3DecoderRemote.id: (context) => MP3DecoderRemote(),
        PanasoundRemote.id: (context) => PanasoundRemote(),
        TornadoRemote.id: (context) => TornadoRemote(),
        TataRemote.id: (context) => TataRemote(),
        About.id: (context) => About(),
      },
    );
  }
}
