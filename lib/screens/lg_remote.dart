import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/drawer_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/lg_remote_code.dart';
import 'universal_remote.dart';

class LGRemote extends StatelessWidget {
  static const String id = 'lg_remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      drawer: DrawerBuilder(),
      appBar: AppbarBuilder(
        barTitle: 'LG TV Remote',
        barLeadingIcon: Icons.settings_remote_rounded,
        onIconPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UniversalRemote(
              remoteTitle: 'LG',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
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
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.power);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.help_outline,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.help);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'RATIO',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.ratio);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.input_rounded,
                          iconColour: kBlackColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.input);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'TV/RAD',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.tvRadio);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '1',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_1);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '2',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_2);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '3',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_3);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '4',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_4);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '5',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_5);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '6',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_6);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '7',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_7);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '8',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_8);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '9',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_9);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'LIST',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.list);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: '0',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.number_0);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'Q.VIEW',
                          buttonCaptionColour: kBlackColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.qView);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'VOL+',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.volumeUp);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: LGIRCode.volumeUp);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'FAV',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.fav);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'PAGE+',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.nextChannel);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: LGIRCode.nextChannel);
                      },
                    ),
                  ],
                ),
                IconBuilder(
                  buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                  buttonBackgroundRadius:
                      BorderRadius.circular(kButtonBackgroundRadius1),
                  buttonType: TextButtonWidget(
                    buttonCaption: 'SETTINGS',
                    buttonCaptionColour: kBlackColor,
                    buttonFontSize: kButtonCaptionFontSize,
                    buttonFontWeight: kButtonCaptionFontWeight,
                  ),
                  onIconPressed: () {
                    irTransmitter(transmitListInt: LGIRCode.settings);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'VOL-',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.volumeDown);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: LGIRCode.volumeDown);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_1,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: '  MUTE  ',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.mute);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'PAGE-',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: LGIRCode.previousChannel);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: LGIRCode.previousChannel);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'INFO',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.info);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_3,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'SMART',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.smart);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'MY APPS',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.myApps);
                      },
                    ),
                  ],
                ),
                IconBuilder(
                  buttonBackgroundIconColour: kBlackColor,
                  buttonBackgroundRadius:
                      BorderRadius.circular(kButtonBackgroundRadius1),
                  buttonType: IconButtonWidget(
                    iconSymbol: Icons.arrow_drop_up_sharp,
                    iconColour: kWhiteColor,
                    iconSize: kIconSize,
                  ),
                  onIconPressed: () {
                    irTransmitter(transmitListInt: LGIRCode.uP);
                  },
                  onIconHold: () {
                    irTransmitter(transmitListInt: LGIRCode.uP);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kBlackColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.arrow_left_sharp,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.left);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: LGIRCode.left);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'OK',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 50.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.ok);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kBlackColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.arrow_right_sharp,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.right);
                      },
                      onIconHold: () {
                        irTransmitter(transmitListInt: LGIRCode.right);
                      },
                    ),
                  ],
                ),
                IconBuilder(
                  buttonBackgroundIconColour: kBlackColor,
                  buttonBackgroundRadius:
                      BorderRadius.circular(kButtonBackgroundRadius1),
                  buttonType: IconButtonWidget(
                    iconSymbol: Icons.arrow_drop_down_sharp,
                    iconColour: kWhiteColor,
                    iconSize: kIconSize,
                  ),
                  onIconPressed: () {
                    irTransmitter(transmitListInt: LGIRCode.down);
                  },
                  onIconHold: () {
                    irTransmitter(transmitListInt: LGIRCode.down);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'BACK',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.back);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'GUIDE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.guide);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'EXIT',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.exit);
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
                          irTransmitter(transmitListInt: LGIRCode.red);
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
                          irTransmitter(transmitListInt: LGIRCode.green);
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
                          irTransmitter(transmitListInt: LGIRCode.yellow);
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
                          irTransmitter(transmitListInt: LGIRCode.blue);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'TEXT',
                          buttonCaptionColour: kWhiteColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.text);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'T.OPT',
                          buttonCaptionColour: kWhiteColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.tOpt);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: TextButtonWidget(
                          buttonCaption: 'Q.MENU',
                          buttonCaptionColour: kWhiteColor,
                          buttonFontSize: kButtonCaptionFontSize,
                          buttonFontWeight: kButtonCaptionFontWeight,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.qView);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.stop,
                          iconColour: kWhiteColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.stop);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.play_arrow,
                          iconColour: kWhiteColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.play);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.pause,
                          iconColour: kWhiteColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.pause);
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
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.fast_rewind,
                          iconColour: kWhiteColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.fastRewind);
                        },
                        onIconHold: () {
                          irTransmitter(transmitListInt: LGIRCode.fastRewind);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.fast_forward,
                          iconColour: kWhiteColor,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.fastForward);
                        },
                        onIconHold: () {
                          irTransmitter(transmitListInt: LGIRCode.fastForward);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconBuilder(
                        buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius1),
                        buttonType: IconButtonWidget(
                          iconSymbol: Icons.fiber_manual_record,
                          iconColour: Colors.red,
                          iconSize: kIconSize,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: LGIRCode.rec);
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'AV MODE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.avMode);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kLGButtonBackgroundColor_2,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius1),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'SIMPLINK',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: LGIRCode.simpLink);
                      },
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
