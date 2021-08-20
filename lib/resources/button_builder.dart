import 'package:flutter/material.dart';
import 'package:ir_controller/resources/constants.dart';
import 'package:holding_gesture/holding_gesture.dart';

class IconBuilder extends StatelessWidget {
  final Function onIconPressed;
  final Function onIconHold;
  final Color buttonBackgroundIconColour;
  final BorderRadiusGeometry buttonBackgroundRadius;
  final Widget buttonType;

  IconBuilder(
      {this.onIconPressed,
      this.onIconHold,
      this.buttonBackgroundIconColour,
      this.buttonBackgroundRadius,
      this.buttonType});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return HoldDetector(
      onHold: onIconHold,
      enableHapticFeedback: true,
      holdTimeout: Duration(milliseconds: 200),
      child: GestureDetector(
        onTap: onIconPressed,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width * 0.25,
            height: size.height * 0.09,
            decoration: BoxDecoration(
              color: buttonBackgroundIconColour,
              borderRadius: buttonBackgroundRadius,
            ),
            child: buttonType,
          ),
        ),
      ),
    );
  }
}

class IconBuilderCustom extends StatelessWidget {
  final Function onIconPressed;
  final Function onIconHold;
  final Color buttonBackgroundIconColour;
  final BorderRadiusGeometry buttonBackgroundRadius;
  final Widget buttonType;
  IconBuilderCustom(
      {this.onIconPressed,
      this.onIconHold,
      this.buttonBackgroundIconColour,
      this.buttonBackgroundRadius,
      this.buttonType});

  @override
  Widget build(BuildContext context) {
    return HoldDetector(
      onHold: onIconHold,
      enableHapticFeedback: true,
      holdTimeout: Duration(milliseconds: 200),
      child: GestureDetector(
        onTap: onIconPressed,
        child: Container(
          decoration: BoxDecoration(
            color: buttonBackgroundIconColour,
            borderRadius: buttonBackgroundRadius,
          ),
          child: buttonType,
        ),
      ),
    );
  }
}

class MainMenuItems extends StatelessWidget {
  final String itemTitle;
  final IconData itemIcon;
  final Function destination;

  MainMenuItems({this.itemTitle, this.itemIcon, @required this.destination});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      child: Container(
        width: size.width * 0.45,
        height: size.height * 0.18,
        decoration: BoxDecoration(
          color: kMainMenuItemColor,
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButtonWidget(
                buttonCaption: itemTitle,
                buttonCaptionColour: kWhiteColor,
                buttonFontSize: kButtonCaptionFontSize,
                buttonFontWeight: kButtonCaptionFontWeight,
              ),
              IconButtonWidget(
                iconSymbol: itemIcon,
                iconColour: kWhiteColor,
                iconSize: 30.0,
              ),
            ],
          ),
        ),
      ),
      onTap: destination,
      // () {
      //   Navigator.pushNamed(context, destination);
      // },
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  final String buttonCaption;
  final Color buttonCaptionColour;
  final double buttonFontSize;
  final FontWeight buttonFontWeight;

  TextButtonWidget(
      {this.buttonCaption,
      this.buttonCaptionColour,
      this.buttonFontSize,
      this.buttonFontWeight});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        buttonCaption,
        style: TextStyle(
            fontSize: buttonFontSize,
            fontWeight: buttonFontWeight,
            color: buttonCaptionColour),
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  final IconData iconSymbol;
  final Color iconColour;
  final double iconSize;

  IconButtonWidget({
    this.iconSymbol,
    this.iconColour,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Icon(
        iconSymbol,
        color: iconColour,
        size: iconSize,
      ),
    );
  }
}
