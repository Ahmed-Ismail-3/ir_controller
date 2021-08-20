import 'package:flutter/material.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/carrozzeria_remote_code.dart';

class CarrozzeriaRemote extends StatelessWidget {
  static const String id = 'carrozzeria_remote';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kCarrozzeriaRemoteBackgroundColor,
      appBar: AppBar(
        title: Text('Carrozzeria Radio Remote'),
        backgroundColor: kAppbarColor,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: size.height * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius: BorderRadius.horizontal(
                      left: Radius.circular(
                        kButtonBackgroundRadius2,
                      ),
                    ),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'VOL-',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(
                          transmitListInt: CarrozzeriaIRCode.volumeDown);
                    },
                    onIconHold: () {
                      irTransmitter(
                          transmitListInt: CarrozzeriaIRCode.volumeDown);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius: BorderRadius.horizontal(
                      right: Radius.circular(
                        kButtonBackgroundRadius2,
                      ),
                    ),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'VOL+',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(
                          transmitListInt: CarrozzeriaIRCode.volumeUp);
                    },
                    onIconHold: () {
                      irTransmitter(
                          transmitListInt: CarrozzeriaIRCode.volumeUp);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'Band/ESC',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.band);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_drop_up_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.uP);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.uP);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'ATT',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.att);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_left_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.left);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.left);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'OK',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: 50.0,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.ok);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_right_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.right);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.right);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'Function',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(
                          transmitListInt: CarrozzeriaIRCode.function);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.arrow_drop_down_sharp,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.down);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.down);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'Audio',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.audio);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'SRC',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.src);
                    },
                    onIconHold: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.src);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: IconButtonWidget(
                      iconSymbol: Icons.pause,
                      iconColour: kWhiteColor,
                      iconSize: kIconSize,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.pause);
                    },
                  ),
                  IconBuilder(
                    buttonBackgroundIconColour:
                        kCarrozzeriaButtonBackgroundColor,
                    buttonBackgroundRadius:
                        BorderRadius.circular(kButtonBackgroundRadius1),
                    buttonType: TextButtonWidget(
                      buttonCaption: 'DISP',
                      buttonCaptionColour: kWhiteColor,
                      buttonFontSize: kButtonCaptionFontSize,
                      buttonFontWeight: kButtonCaptionFontWeight,
                    ),
                    onIconPressed: () {
                      irTransmitter(transmitListInt: CarrozzeriaIRCode.disp);
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
