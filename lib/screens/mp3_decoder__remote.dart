import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/ir_transmitter.dart';
import 'package:ir_controller/models/mp3_decoder_remote_code.dart';

class MP3DecoderRemote extends StatelessWidget {
  static const String id = 'mp3_decoder__remote';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: AppBar(
        title: Text('MP3 Decoder Remote'),
        backgroundColor: kAppbarColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 15.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xffFC4760),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.power_settings_new_rounded,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.power);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'STOP',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.stop);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xffFC4760),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.volume_off_rounded,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.mute);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xff02C667),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'MODE',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.mode);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.threesixty_rounded,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.recall);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: Color(0xff02C667),
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: 'EQ',
                        buttonCaptionColour: kWhiteColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.eq);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.skip_previous,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.skipPrevious);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.skipPrevious);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.skip_next,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.skipNext);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.skipNext);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.play_arrow,
                        iconColour: kWhiteColor,
                        iconSize: kIconSize,
                      ),
                      onIconPressed: () {
                        irTransmitter(transmitListInt: Mp3DecoderIRCode.play);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(math.pi),
                        child: IconButtonWidget(
                          iconSymbol: Icons.signal_cellular_4_bar_rounded,
                          iconColour: kWhiteColor,
                          iconSize: 40.0,
                        ),
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.volumeDown);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.volumeDown);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kMP3ButtonBackgroundColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: IconButtonWidget(
                        iconSymbol: Icons.signal_cellular_4_bar_rounded,
                        iconColour: kWhiteColor,
                        iconSize: 40.0,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.volumeUp);
                      },
                      onIconHold: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.volumeUp);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '0',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_0);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '1',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_1);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '2',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_2);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '3',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_3);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '4',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_4);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '5',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_5);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '6',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_6);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '7',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_7);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '8',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_8);
                      },
                    ),
                    IconBuilder(
                      buttonBackgroundIconColour: kWhiteColor,
                      buttonBackgroundRadius:
                          BorderRadius.circular(kButtonBackgroundRadius2),
                      buttonType: TextButtonWidget(
                        buttonCaption: '9',
                        buttonCaptionColour: kBlackColor,
                        buttonFontSize: kButtonCaptionFontSize,
                        buttonFontWeight: kButtonCaptionFontWeight,
                      ),
                      onIconPressed: () {
                        irTransmitter(
                            transmitListInt: Mp3DecoderIRCode.number_9);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
