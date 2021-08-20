import 'package:flutter/material.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/tata_remote_code.dart';

class TataRemote extends StatelessWidget {
  static const String id = 'tata_remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kImageRemotesBackgroundColor,
      appBar: AppBar(
        title: Text('Tata Fan Remote'),
        backgroundColor: kAppbarColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/tata.png"),
            fit: BoxFit.scaleDown,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 158.0, vertical: 87.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.hr_1);
                        },
                      ),
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.speed_1);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 33.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.hr_2);
                        },
                      ),
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.speed_2);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.hr_4);
                        },
                      ),
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.speed_3);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.hr_8);
                        },
                      ),
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.speed_4);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconBuilderCustom(
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 10.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.speed_5);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconBuilderCustom(
                        buttonBackgroundRadius:
                            BorderRadius.circular(kButtonBackgroundRadius2),
                        buttonType: TextButtonWidget(
                          buttonCaption: '              ',
                          buttonFontSize: 15.0,
                        ),
                        onIconPressed: () {
                          irTransmitter(transmitListInt: TataIRCode.power);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
