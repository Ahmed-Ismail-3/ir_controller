import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/screens/lg_remote.dart';
import 'package:ir_controller/screens/jac_remote.dart';
import 'package:ir_controller/screens/strong_remote.dart';
import 'package:ir_controller/screens/sunplus_remote.dart';
import 'package:ir_controller/models/lg_remote_code.dart';
import 'package:ir_controller/models/jac_remote_code.dart';
import 'package:ir_controller/models/strong_remote_code.dart';
import 'package:ir_controller/models/sunplus_remote_code.dart';

class UniversalRemote extends StatelessWidget {
  static const String id = 'universal_remote';
  final String remoteTitle;

  UniversalRemote({this.remoteTitle});

  void getNextPage(context, String type) {
    switch (type) {
      case 'LG':
        Navigator.pushNamed(context, LGRemote.id);
        break;
      case 'Jac':
        Navigator.pushNamed(context, JacRemote.id);

        break;
      case 'Strong':
        Navigator.pushNamed(context, StrongRemote.id);

        break;
      case 'SunPlus':
        Navigator.pushNamed(context, SunplusRemote.id);

        break;
    }
  }

  // ignore: missing_return
  List<int> getIRCode(String type, String key) {
    switch (type) {
      case 'LG':
        switch (key) {
          case 'power':
            return LGIRCode.power;
            break;
          case 'mute':
            return LGIRCode.mute;
            break;
          case 'up':
            return LGIRCode.uP;
            break;
          case 'left':
            return LGIRCode.left;
            break;
          case 'ok':
            return LGIRCode.ok;
            break;
          case 'right':
            return LGIRCode.right;
            break;
          case 'down':
            return LGIRCode.down;
            break;
          case 'menu':
            return LGIRCode.settings;
            break;
          case 'exit':
            return LGIRCode.exit;
            break;
        }
        break;
      case 'Jac':
        switch (key) {
          case 'power':
            return JacIRCode.power;
            break;
          case 'mute':
            return JacIRCode.mute;
            break;
          case 'up':
            return JacIRCode.uP;
            break;
          case 'left':
            return JacIRCode.left;
            break;
          case 'ok':
            return JacIRCode.ok;
            break;
          case 'right':
            return JacIRCode.right;
            break;
          case 'down':
            return JacIRCode.down;
            break;
          case 'menu':
            return JacIRCode.menu;
            break;
          case 'exit':
            return JacIRCode.exit;
            break;
        }
        break;
      case 'Strong':
        switch (key) {
          case 'power':
            return StrongIRCode.power;
            break;
          case 'mute':
            return StrongIRCode.mute;
            break;
          case 'up':
            return StrongIRCode.uP;
            break;
          case 'left':
            return StrongIRCode.left;
            break;
          case 'ok':
            return StrongIRCode.ok;
            break;
          case 'right':
            return StrongIRCode.right;
            break;
          case 'down':
            return StrongIRCode.down;
            break;
          case 'menu':
            return StrongIRCode.menu;
            break;
          case 'exit':
            return StrongIRCode.exit;
            break;
        }
        break;
      case 'SunPlus':
        switch (key) {
          case 'power':
            return SunPlusIRCode.power;
            break;
          case 'mute':
            return SunPlusIRCode.mute;
            break;
          case 'up':
            return SunPlusIRCode.uP;
            break;
          case 'left':
            return SunPlusIRCode.left;
            break;
          case 'ok':
            return SunPlusIRCode.ok;
            break;
          case 'right':
            return SunPlusIRCode.right;
            break;
          case 'down':
            return SunPlusIRCode.down;
            break;
          case 'menu':
            return SunPlusIRCode.menu;
            break;
          case 'exit':
            return SunPlusIRCode.exit;
            break;
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: '$remoteTitle Remote',
        barLeadingIcon: Icons.settings_remote_rounded,
        onIconPressed: () => getNextPage(context, remoteTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBuilder(
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.power_settings_new_rounded,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(
                      transmitListInt: getIRCode(remoteTitle, 'power'));
                },
              ),
              IconBuilder(
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.volume_off_rounded,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(
                    transmitListInt: getIRCode(remoteTitle, 'mute'),
                  );
                },
              ),
            ],
          ),
          IconBuilder(
            buttonType: IconButtonWidget(
              iconSymbol: Icons.keyboard_arrow_up,
              iconColour: kWhiteColor,
              iconSize: kIconSize,
            ),
            onIconPressed: () {
              irTransmitter(
                transmitListInt: getIRCode(remoteTitle, 'up'),
              );
            },
            onIconHold: () {
              irTransmitter(
                transmitListInt: getIRCode(remoteTitle, 'up'),
              );
            },
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconBuilder(
                  buttonType: IconButtonWidget(
                    iconSymbol: Icons.keyboard_arrow_left,
                    iconColour: kWhiteColor,
                    iconSize: kIconSize,
                  ),
                  onIconPressed: () {
                    irTransmitter(
                      transmitListInt: getIRCode(remoteTitle, 'left'),
                    );
                  },
                  onIconHold: () {
                    irTransmitter(
                      transmitListInt: getIRCode(remoteTitle, 'left'),
                    );
                  },
                ),
                IconBuilder(
                  buttonType: TextButtonWidget(
                    buttonCaption: 'OK',
                    buttonCaptionColour: kWhiteColor,
                    buttonFontSize: kButtonCaptionFontSize,
                    buttonFontWeight: kButtonCaptionFontWeight,
                  ),
                  onIconPressed: () {
                    irTransmitter(
                      transmitListInt: getIRCode(remoteTitle, 'ok'),
                    );
                  },
                ),
                IconBuilder(
                  buttonType: IconButtonWidget(
                    iconSymbol: Icons.keyboard_arrow_right,
                    iconColour: kWhiteColor,
                    iconSize: kIconSize,
                  ),
                  onIconPressed: () {
                    irTransmitter(
                      transmitListInt: getIRCode(remoteTitle, 'right'),
                    );
                  },
                  onIconHold: () {
                    irTransmitter(
                      transmitListInt: getIRCode(remoteTitle, 'right'),
                    );
                  },
                ),
              ],
            ),
          ),
          IconBuilder(
            buttonType: IconButtonWidget(
              iconSymbol: Icons.keyboard_arrow_down,
              iconColour: kWhiteColor,
              iconSize: kIconSize,
            ),
            onIconPressed: () {
              irTransmitter(
                transmitListInt: getIRCode(remoteTitle, 'down'),
              );
            },
            onIconHold: () {
              irTransmitter(
                transmitListInt: getIRCode(remoteTitle, 'down'),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBuilder(
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.menu,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(
                    transmitListInt: getIRCode(remoteTitle, 'menu'),
                  );
                },
              ),
              IconBuilder(
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.exit_to_app_rounded,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(
                    transmitListInt: getIRCode(remoteTitle, 'exit'),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
