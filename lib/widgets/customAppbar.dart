import 'package:flutter/material.dart';
import 'package:spinner/models/colorConstants.dart';

class CustomAppbar extends StatefulWidget {
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    ColorConstants _colorConstants = ColorConstants();

    return AppBar(
      backgroundColor: _colorConstants.backgroundColor,
      elevation: 0.0,
      leading: Container(),
      centerTitle: true,
      title: IconButton(
        highlightColor: _colorConstants.backgroundColor,
        icon: Image.asset("assets/return_button.jpg"),
        iconSize: 40,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
