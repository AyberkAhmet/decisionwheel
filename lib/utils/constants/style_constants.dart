import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:spinner/utils/constants/string_constants.dart';

Color backgroundColor = const Color.fromRGBO(240, 240, 240, 1);
Color outsideCircleColor = const Color.fromRGBO(233, 233, 233, 1);
Color middleCircleColor = const Color.fromRGBO(226, 226, 226, 1);
Color insideCircleColor = const Color.fromRGBO(219, 219, 219, 1);

Color homeMenuItemShadowColor = Colors.grey[400]!;

//Fortune Items Styles
TextStyle fortuneItemTextStyle = const TextStyle(
    color: Colors.white, fontSize: 30, fontFamily: helveticaFontFamily);
TextStyle fortuneItemBlackTextStyle = const TextStyle(
    color: Colors.black, fontSize: 30, fontFamily: helveticaFontFamily);

FortuneItemStyle getFortuneItemStyle(Color fortuneItemColor) {
  return FortuneItemStyle(
    borderWidth: 5,
    borderColor: fortuneItemColor == Colors.white ? Colors.black : Colors.white,
    color: fortuneItemColor,
    textStyle: fortuneItemColor == Colors.white
        ? fortuneItemBlackTextStyle
        : fortuneItemTextStyle,
  );
}

//Create Wheel Page Styles
InputBorder textFieldInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(
    color: Colors.white,
  ),
  borderRadius: BorderRadius.circular(10),
);
