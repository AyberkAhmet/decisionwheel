import 'package:flutter/material.dart';
import 'package:spinner/utils/constants/style_constants.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(),
      title: IconButton(
        highlightColor: backgroundColor,
        icon: Image.asset("assets/return_button.jpg"),
        iconSize: 40,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
