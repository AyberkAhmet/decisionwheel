import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class WheelModel {
  String question;
  List<FortuneItem> fortuneItems;

  WheelModel({required this.question, required this.fortuneItems});
}
