import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class ListConstants {
  List<FortuneItem> shouldList = [
    FortuneItem(
      child: Text(
        "YES",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.green,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "NO",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];
  List<AutoSizeText> shouldTextList = [
    AutoSizeText(
      "YES",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "NO",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
  ];

  List<FortuneItem> drinkList = [
    FortuneItem(
      child: Text(
        "COCA COLA",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "STARBUCKS",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.grey,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "ORANGE JUICE",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.purple,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "MILKSHAKE",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.yellow,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "PEPSI",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.pink,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "SPRITE",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.blue,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "FANTA",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.orange,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "RED BULL",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.cyan,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "ICE TEA",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.brown,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];

  List<AutoSizeText> drinksTextList = [
    AutoSizeText(
      "COCA COLA",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "STARBUCKS",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "ORANGE JUICE",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "MILKSHAKE",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "PEPSI",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "SPRITE",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "FANTA",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "RED BULL",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "ICE TEA",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
  ];

  List<FortuneItem> cuisinesList = [
    FortuneItem(
      child: Text(
        "TURKISH",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "INDIAN",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.orange,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "KOREAN",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.purple,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "ITALIAN",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.yellow,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "CHINESE",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.pink,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "GREEK",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.blue,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "MEXICAN",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.green,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];

  List<AutoSizeText> cuisineTextList = [
    AutoSizeText(
      "TURKISH",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "INDIAN",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "KOREAN",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "ITALIAN",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "CHINESE",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "GREEK",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "MEXICAN",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
  ];

  List<FortuneItem> foodsList = [
    FortuneItem(
      child: Text(
        "MCDONALD'S",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.yellow,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "BURGER KING",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.blue,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "ARBY'S",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "POPEYES",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.orange,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "KFC",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.pink,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "SUBWAY",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.green,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "DOMINO'S PIZZA",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.grey,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text(
        "PIZZA HUT",
      ),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.purple,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];

  List<AutoSizeText> foodsTextList = [
    AutoSizeText(
      "MCDONALD'S",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "BURGER KING",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "ARBY'S",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "POPEYES",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "KFC",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "SUBWAY",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "DOMINO'S PIZZA",
      style: TextStyle(fontFamily: "PoeNewBold", fontSize: 50, fontWeight: FontWeight.bold),
    ),
    AutoSizeText(
      "PIZZA HUT",
      style: TextStyle(fontFamily: "PoeNewBold", fontWeight: FontWeight.bold),
    ),
  ];
}
