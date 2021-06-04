import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class ListConstants {

  List<FortuneItem> shouldList = [
    FortuneItem(
      child: Text("YES"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.green,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("NO"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];

  List<FortuneItem> drinkList = [
    FortuneItem(
      child: Text("COCA COLA"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("STARBUCKS"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.grey,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("ORANGE JUICE"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.purple,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("MILKSHAKE"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.yellow,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("PEPSI"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.pink,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("SPRITE"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.blue,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("FANTA"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.orange,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("RED BULL"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.cyan,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("ICE TEA"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.brown,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];

  List<FortuneItem> cuisinesList = [
    FortuneItem(
      child: Text("TURKISH"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("INDIAN"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.orange,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("KOREAN"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.purple,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("ITALIAN"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.yellow,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("CHINESE"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.pink,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("GREEK"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.blue,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("MEXICAN"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.green,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];

  List<FortuneItem> foodsList = [
    FortuneItem(
      child: Text("MCDONALD'S"),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.yellow,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("Burger King".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.blue,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("Arby's".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.red,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("Popeyes".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.orange,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("KFC".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.pink,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("Subway".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.green,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("Domino's Pizza".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.grey,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
    FortuneItem(
      child: Text("Pizza Hut".toUpperCase()),
      style: FortuneItemStyle(
        borderWidth: 5,
        borderColor: Colors.white,
        color: Colors.purple,
        textStyle: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "HelveticaComp"),
      ),
    ),
  ];
}
