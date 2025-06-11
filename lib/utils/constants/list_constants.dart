import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:spinner/models/home_menu_item_model.dart';
import 'package:spinner/models/wheel_model.dart';
import 'package:spinner/utils/constants/string_constants.dart';
import 'package:spinner/utils/constants/style_constants.dart';
import 'package:spinner/views/create_wheel_page.dart';
import 'package:spinner/views/wheel_page.dart';

List<FortuneItem> shouldList = [
  FortuneItem(
    child: const Text(shouldText1),
    style: getFortuneItemStyle(Colors.green),
  ),
  FortuneItem(
      child: const Text(shouldText2), style: getFortuneItemStyle(Colors.red)),
];

List<FortuneItem> drinkList = [
  FortuneItem(
      child: const Text(drinkText1), style: getFortuneItemStyle(Colors.red)),
  FortuneItem(
      child: const Text(drinkText2), style: getFortuneItemStyle(Colors.grey)),
  FortuneItem(
      child: const Text(drinkText3), style: getFortuneItemStyle(Colors.purple)),
  FortuneItem(
      child: const Text(drinkText4), style: getFortuneItemStyle(Colors.yellow)),
  FortuneItem(
      child: const Text(drinkText5), style: getFortuneItemStyle(Colors.pink)),
  FortuneItem(
      child: const Text(drinkText6), style: getFortuneItemStyle(Colors.blue)),
  FortuneItem(
      child: const Text(drinkText7), style: getFortuneItemStyle(Colors.orange)),
  FortuneItem(
      child: const Text(drinkText8), style: getFortuneItemStyle(Colors.cyan)),
  FortuneItem(
      child: const Text(drinkText9), style: getFortuneItemStyle(Colors.brown)),
];

List<FortuneItem> cuisinesList = [
  FortuneItem(
      child: const Text(cuisineText1), style: getFortuneItemStyle(Colors.red)),
  FortuneItem(
      child: const Text(cuisineText2),
      style: getFortuneItemStyle(Colors.orange)),
  FortuneItem(
      child: const Text(cuisineText3),
      style: getFortuneItemStyle(Colors.purple)),
  FortuneItem(
      child: const Text(cuisineText4),
      style: getFortuneItemStyle(Colors.yellow)),
  FortuneItem(
      child: const Text(cuisineText5), style: getFortuneItemStyle(Colors.pink)),
  FortuneItem(
      child: const Text(cuisineText6), style: getFortuneItemStyle(Colors.blue)),
  FortuneItem(
      child: const Text(cuisineText7),
      style: getFortuneItemStyle(Colors.green)),
];

List<FortuneItem> foodsList = [
  FortuneItem(
      child: const Text(foodText1), style: getFortuneItemStyle(Colors.yellow)),
  FortuneItem(
      child: const Text(foodText2), style: getFortuneItemStyle(Colors.blue)),
  FortuneItem(
      child: const Text(foodText3), style: getFortuneItemStyle(Colors.red)),
  FortuneItem(
      child: const Text(foodText4), style: getFortuneItemStyle(Colors.orange)),
  FortuneItem(
      child: const Text(foodText5), style: getFortuneItemStyle(Colors.pink)),
  FortuneItem(
      child: const Text(foodText6), style: getFortuneItemStyle(Colors.green)),
  FortuneItem(
      child: const Text(foodText7), style: getFortuneItemStyle(Colors.grey)),
  FortuneItem(
      child: const Text(foodText8), style: getFortuneItemStyle(Colors.purple)),
];
WheelModel shouldWheelModel =
    WheelModel(question: shouldIQuestion, fortuneItems: shouldList);
WheelModel drinksWheelModel =
    WheelModel(question: drinksQuestion, fortuneItems: drinkList);
WheelModel cuisinesWheelModel =
    WheelModel(question: cuisinesQuestion, fortuneItems: cuisinesList);
WheelModel foodsWheelModel =
    WheelModel(question: foodsQuestion, fortuneItems: foodsList);

List<HomeMenuItemModel> homeMenuItems = [
  HomeMenuItemModel(
      title: shouldITitle, navigatePageName: WheelPage(shouldWheelModel)),
  HomeMenuItemModel(
      title: drinksTitle, navigatePageName: WheelPage(drinksWheelModel)),
  HomeMenuItemModel(
      title: foodsTitle, navigatePageName: WheelPage(foodsWheelModel)),
  HomeMenuItemModel(
      title: cuisinesTitle, navigatePageName: WheelPage(cuisinesWheelModel)),
  HomeMenuItemModel(
      title: createWheelTitle, navigatePageName: const CreateWheelPage()),
];
