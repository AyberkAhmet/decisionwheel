import 'package:flutter/material.dart';
import 'package:spinner/models/colorConstants.dart';
import 'package:spinner/widgets/homeWidgets/homeCardWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ColorConstants _colorConstants = ColorConstants();

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: _colorConstants.backgroundColor,
        body: Center(
          child: ListView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 10),
            shrinkWrap: true,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeCardWidget("DRINKS"),
              HomeCardWidget("FOODS"),
              HomeCardWidget("CUISINES"),
              HomeCardWidget("CREATE DECISION WHEEL"),
            ],
          ),
        ),
      ),
    );
  }
}
