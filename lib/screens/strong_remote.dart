import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/strong_remote_code.dart';
import 'universal_remote.dart';

class StrongRemote extends StatelessWidget {
  static const String id = 'strong_remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kStrongRemoteBackgroundColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'Strong Receiver Remote',
        barLeadingIcon: Icons.settings_remote_rounded,
        onIconPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UniversalRemote(
              remoteTitle: 'Strong',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBuilderCustom(
                      buttonBackgroundIconColour: Colors.red,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.power_settings_new_rounded,
                        iconColour: kBlackColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.power);
                      },
                    ),
                    IconBuilderCustom(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.volume_mute,
                        iconColour: kBlackColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.mute);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '1',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_1);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '2',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_2);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '3',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_3);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '4',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_4);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '5',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_5);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '6',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_6);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '7',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_7);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '8',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_8);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '9',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_9);
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
                          buttonCaption: 'TV/RAD',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.tvRadio);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '0',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.number_0);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'TV/SAT',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.tvSat);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBuilderCustom(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'MENU',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: 28.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.menu);
                      },
                    ),
                    IconBuilderCustom(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'EPG',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: 30.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.epg);
                      },
                    ),
                    IconBuilderCustom(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'INFO',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: 30.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.info);
                      },
                    ),
                    IconBuilderCustom(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'EXIT',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: 30.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.exit);
                      },
                    ),
                  ],
                ),
                IconBuilder(
                  buttonBackgroundIconColour: Color(0xFF0066B8),
                  buttonBackgroundRadius:
                      BorderRadius.circular(kButtonBackgroundRadius2),
                  buttonType: IconButtonWidget(
                    iconSymbol: Icons.arrow_drop_up_sharp,
                    iconColour: kBlackColor,
                    iconSize: kIconSize,
                  ),
                  onIconPressed: () {
                    irTransmitter(transmitListInt: StrongIRCode.uP);
                  },
                  onIconHold: () {
                    irTransmitter(transmitListInt: StrongIRCode.uP);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xFF0066B8),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.arrow_left_sharp,
                        iconColour: kBlackColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.left);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: StrongIRCode.left);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xFF0066B8),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'OK',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: 50.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.ok);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xFF0066B8),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.arrow_right_sharp,
                        iconColour: kBlackColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.right);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: StrongIRCode.right);
                      },
                    ),
                  ],
                ),
                IconBuilder(
                  buttonBackgroundIconColour: Color(0xFF0066B8),
                  buttonBackgroundRadius:
                      BorderRadius.circular(kButtonBackgroundRadius2),
                  buttonType: IconButtonWidget(
                    iconSymbol: Icons.arrow_drop_down_sharp,
                    iconColour: kBlackColor,
                    iconSize: kIconSize,
                  ),
                  onIconPressed: () {
                    irTransmitter(transmitListInt: StrongIRCode.down);
                  },
                  onIconHold: () {
                    irTransmitter(transmitListInt: StrongIRCode.down);
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
                        buttonCaption: 'GROUP',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.group);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'PAGE+',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.pageUp);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: StrongIRCode.pageUp);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'PAUSE',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.pause);
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
                        buttonCaption: 'COLOR',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.color);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'PAGE-',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.pageDown);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: StrongIRCode.pageDown);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kJacButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'ZOOM',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: StrongIRCode.zoom);
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
                          buttonCaption: 'RECALL',
                          buttonFontSize: kButtonCaptionFontSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.red);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: Colors.green,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'AUDIO',
                          buttonFontSize: kButtonCaptionFontSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.green);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: Colors.yellow,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'TEXT',
                          buttonFontSize: kButtonCaptionFontSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.yellow);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: Color(0xFF0066B8),
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.indeterminate_check_box_outlined,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.blue);
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
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(
                              transmitListInt: StrongIRCode.fastRewind);
                        },
                        onIconHold: () {
                          irTransmitter(
                              transmitListInt: StrongIRCode.fastRewind);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'ADVANCED',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.advanced);
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
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(
                              transmitListInt: StrongIRCode.fastForward);
                        },
                        onIconHold: () {
                          irTransmitter(
                              transmitListInt: StrongIRCode.fastForward);
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
                        buttonBackgroundIconColour: Colors.red,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.fiber_manual_record,
                          iconColour: Colors.black,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.rec);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.play_arrow,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.play);
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
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.stop);
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
                          iconSymbol: Icons.list_alt_rounded,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.fileList);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.bookmark_border,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.bookmark);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kJacButtonBackgroundColor,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.timer,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: StrongIRCode.sleep);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
