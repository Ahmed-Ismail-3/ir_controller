import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/jac_remote_code.dart';
import 'universal_remote.dart';

class JacRemote extends StatelessWidget {
  static const String id = 'jac_remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kJacRemoteBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'Jac TV Remote',
        barLeadingIcon: Icons.settings_remote_rounded,
        onIconPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UniversalRemote(
              remoteTitle: 'Jac',
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: Colors.red,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.power_settings_new_rounded,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.power);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.volume_mute,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.mute);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '1',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_1);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '2',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_2);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '3',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_3);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '4',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_4);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '5',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_5);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '6',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_6);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '7',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_7);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '8',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_8);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '9',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_9);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'FREEZE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.freeze);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '0',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.number_0);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.repeat_rounded,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.recall);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'P.MODE',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.pMode);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'S.MODE',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.sMode);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'AUDIO',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.audio);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'MENU',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.menu);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'SOURCE',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.source);
                    },
                  ),
                ],
              ),
              IconBuilder(
                buttonBackgroundIconColour: kJacButtonBackgroundColor,
                buttonBackgroundRadius:
                    BorderRadius.circular(kButtonBackgroundRadius2),
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.arrow_drop_up_sharp,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(transmitListInt: JacIRCode.uP);
                },
                onIconHold: () {
                  irTransmitter(transmitListInt: JacIRCode.uP);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_left_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.left);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: JacIRCode.left);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'OK',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: 50.0,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.ok);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_right_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.right);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: JacIRCode.right);
                    },
                  ),
                ],
              ),
              IconBuilder(
                buttonBackgroundIconColour: kJacButtonBackgroundColor,
                buttonBackgroundRadius:
                    BorderRadius.circular(kButtonBackgroundRadius2),
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.arrow_drop_down_sharp,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(transmitListInt: JacIRCode.down);
                },
                onIconHold: () {
                  irTransmitter(transmitListInt: JacIRCode.down);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'EXIT',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.exit);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'INFO',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.info);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'CH+',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.nextChannel);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: JacIRCode.nextChannel);
                    },
                  ),
                  Column(
                    children: [
                      IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.home,
                          iconColour: kWhiteColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: JacIRCode.home);
                        },
                      ),
                      IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'MOUSE',
                          buttonCaptionColour: kWhiteColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: JacIRCode.mouse);
                        },
                      ),
                    ],
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'VOL+',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.volumeUp);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: JacIRCode.volumeUp);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'CH-',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.previousChannel);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: JacIRCode.previousChannel);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: '  SLEEP  ',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.sleep);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kJacButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'VOL-',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: JacIRCode.volumeDown);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: JacIRCode.volumeDown);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.red,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.red);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.green,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.green);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.yellow,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.yellow);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.blue,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.blue);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.fast_rewind,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.fastRewind);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: JacIRCode.fastRewind);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.fast_forward,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.fastForward);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: JacIRCode.fastForward);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.skip_previous,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.skipPrevious);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.skip_next,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.skipNext);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.play_arrow,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.play);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.stop,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.stop);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'AUTO',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.auto);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'ASPECT',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.aspect);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'FILE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.file);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'DELETE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.delete);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'ZOOM-',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.zoomDown);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'ZOOM+',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: JacIRCode.zoomUp);
                      },
                    ),
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
