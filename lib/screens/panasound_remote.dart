import 'package:flutter/material.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/panasound_remote_code.dart';

class PanasoundRemote extends StatelessWidget {
  static const String id = 'panasound_remote';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kImageRemotesBackgroundColor,
      appBar: AppBar(
        title: Text('Panasound Radio Remote'),
        backgroundColor: kAppbarColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/panasound.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.21,
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'ON/OFF',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: PanasoundIRCode.power);
                      },
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'MUTE     ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: PanasoundIRCode.mute);
                      },
                    ),
                    SizedBox(
                      width: size.width * 0.2,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.24,
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'DOWN',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: PanasoundIRCode.volumeDown);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: PanasoundIRCode.volumeDown);
                      },
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'UP       ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: PanasoundIRCode.volumeUp);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: PanasoundIRCode.volumeUp);
                      },
                    ),
                    SizedBox(
                      width: size.width * 0.21,
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
