import 'package:flutter/material.dart';
import 'package:ir_controller/resources/constants.dart';

class AppbarBuilder extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(kAppbarHeight);

  final String barTitle;
  final IconData barLeadingIcon;
  final Function onIconPressed;

  AppbarBuilder({this.barTitle, this.barLeadingIcon, this.onIconPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(barTitle),
      backgroundColor: kAppbarColor,
      shadowColor: Colors.red,
      elevation: 10.0,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            barLeadingIcon,
            size: 40.0,
            color: Colors.white,
          ),
          onPressed: onIconPressed,
        )
      ],
    );
  }
}
