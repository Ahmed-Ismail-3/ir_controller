import 'package:flutter/material.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/tornado_remote_code.dart';
import 'package:ir_controller/resources/constants.dart';

class TornadoRemote extends StatelessWidget {
  static const String id = 'tornado_remote';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kImageRemotesBackgroundColor,
      appBar: AppBar(
        title: Text('Tornado Fan Remote'),
        backgroundColor: kAppbarColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/tornado.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: size.height * 0.089,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.20,
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'TIMER',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: TornadoIRCode.timer);
                      },
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'SPEED',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: TornadoIRCode.speed);
                      },
                    ),
                    SizedBox(
                      width: size.width * 0.19,
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.112,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.20,
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'FREEZ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: TornadoIRCode.freez);
                      },
                    ),
                    IconBuilderCustom(
                      buttonType: TextButtonWidget(
                        buttonCaption: 'SWING',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: 15.0,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: TornadoIRCode.swing);
                      },
                    ),
                    SizedBox(
                      width: size.width * 0.19,
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
