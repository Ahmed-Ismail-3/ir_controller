import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/sunplus_remote_code.dart';
import 'universal_remote.dart';

class SunplusRemote extends StatelessWidget {
  static const String id = 'sunplus_remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSunplusRemoteeBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'SunPlus Receiver Remote',
        barLeadingIcon: Icons.settings_remote_rounded,
        onIconPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UniversalRemote(
              remoteTitle: 'SunPlus',
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
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.power_settings_new_rounded,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.power);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'Mute',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.mute);
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
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.red);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.green,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.green);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.yellow,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.yellow);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: Colors.blue,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: ' ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.blue);
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
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'Zoom',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.zoom);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'SUB',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.sub);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'TIMESHIFT',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.timeShift);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'SOURCE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.source);
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
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'TV/RADIO',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.tvRadio);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'TTX/CC',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.ttxCC);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'FILELIST',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.fileList);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'TIMER',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.timer);
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
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.play_arrow,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.play);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.pause,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.pause);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.stop,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.stop);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.fiber_manual_record,
                        iconColour: Colors.red,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.rec);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'MENU',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.menu);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'EXIT',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.exit);
                    },
                  ),
                ],
              ),
              IconBuilder(
                buttonBackgroundIconColour: kButtonBackgroundColor,
                buttonBackgroundRadius:
                    BorderRadius.circular(kButtonBackgroundRadius2),
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.arrow_drop_up_sharp,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(transmitListInt: SunPlusIRCode.uP);
                },
                onIconHold: () {
                  irTransmitter(transmitListInt: SunPlusIRCode.uP);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_left_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.left);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.left);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'OK',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: 50.0,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.ok);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_right_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.right);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.right);
                    },
                  ),
                ],
              ),
              IconBuilder(
                buttonBackgroundIconColour: kButtonBackgroundColor,
                buttonBackgroundRadius:
                    BorderRadius.circular(kButtonBackgroundRadius2),
                buttonType: IconButtonWidget(
                  iconSymbol: Icons.arrow_drop_down_sharp,
                  iconColour: kWhiteColor,
                  iconSize: kIconSize,
                ),
                onIconPressed: () {
                  irTransmitter(transmitListInt: SunPlusIRCode.down);
                },
                onIconHold: () {
                  irTransmitter(transmitListInt: SunPlusIRCode.down);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'EPG',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.epg);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'INFO',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.info);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.skip_previous,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(
                          transmitListInt: SunPlusIRCode.skipPrevious);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'AUDIO',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.audio);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.fast_rewind,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.fastRewind);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.fastRewind);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.skip_next,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.skipNext);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: TextButtonWidget(
                      buttonCaption: '  SAT  ',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.sat);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour: kButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius2),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.fast_forward,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.fastForward);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: SunPlusIRCode.fastForward);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '1',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_1);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '2',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_2);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '3',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_3);
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
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '4',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_4);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '5',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_5);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '6',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_6);
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
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '7',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_7);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '8',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_8);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '9',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_9);
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
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'FAV',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.fav);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '0',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.number_0);
                      },
                    ),
                  ),
                  Expanded(
                    child: IconBuilder(
                      buttonBackgroundIconColour: kButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'RECALL',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: SunPlusIRCode.recall);
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
