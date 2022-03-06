import 'package:flutter/material.dart';
import 'package:spinner/utils/constants/string_constants.dart';
import 'package:spinner/utils/constants/style_constants.dart';

final customTheme = ThemeData(
  scaffoldBackgroundColor: backgroundColor,
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.black),
    backgroundColor: backgroundColor,
    elevation: 0.0,
    centerTitle: true,
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: textFieldInputBorder,
    enabledBorder: textFieldInputBorder,
    fillColor: Colors.white,
    filled: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        primary: Colors.white),
  ),
  primaryTextTheme: const TextTheme(
    headline3: TextStyle(
      fontFamily: poeFontFamily,
      fontSize: 50,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontFamily: helveticaFontFamily,
      fontSize: 30,
      color: Colors.white,
    ),
    headline5: TextStyle(
      fontSize: 24,
      color: Colors.black,
    ),
    headline6: TextStyle(
      fontSize: 15,
      color: Colors.black,
    ),
  ),
);
