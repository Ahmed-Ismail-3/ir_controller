import 'package:flutter/material.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:ir_controller/resources/button_builder.dart';
import 'package:ir_controller/resources/appbar_builder.dart';
import 'package:open_settings/open_settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class About extends StatelessWidget {
  static const String id = 'about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      appBar: AppbarBuilder(
        barTitle: 'About',
        barLeadingIcon: Icons.info_rounded,
        onIconPressed: () {
          OpenSettings.openManageApplicationSetting();
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SvgPicture.asset(
                'images/remote.svg',
                semanticsLabel: 'App Logo',
                width: 100.0,
                height: 150.0,
              ),
            ),
            TextButtonWidget(
              buttonCaption: 'IR Controller App',
              buttonCaptionColour: kWhiteColor,
              buttonFontSize: kButtonCaptionFontSize,
              buttonFontWeight: kButtonCaptionFontWeight,
            ),
            TextButtonWidget(
              buttonCaption: 'Version 1.0',
              buttonCaptionColour: kWhiteColor,
              buttonFontSize: kButtonCaptionFontSize,
              buttonFontWeight: kButtonCaptionFontWeight,
            ),
            TextButtonWidget(
              buttonCaption: 'Developed By Ahmed Ismail',
              buttonCaptionColour: kWhiteColor,
              buttonFontSize: kButtonCaptionFontSize,
              buttonFontWeight: kButtonCaptionFontWeight,
            ),
            TextButtonWidget(
              buttonCaption: 'All Rights Reserved',
              buttonCaptionColour: kWhiteColor,
              buttonFontSize: kButtonCaptionFontSize,
              buttonFontWeight: kButtonCaptionFontWeight,
            ),
          ],
        ),
      ),
    );
  }
}
