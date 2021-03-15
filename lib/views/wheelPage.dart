import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:spinner/models/colorConstants.dart';
import 'package:spinner/widgets/customAppbar.dart';
import 'package:spinner/widgets/wheelPageWidgets/selectedTextWidget.dart';

class WheelPage extends StatefulWidget {
  final String? _question;
  final List<FortuneItem>? _itemList;
  WheelPage(this._question, this._itemList);

  @override
  _WheelPageState createState() => _WheelPageState();
}

class _WheelPageState extends State<WheelPage> {
  int selected = 0;
  bool showText = false;
  @override
  void initState() {
    super.initState();
    showText = false;
  }

  @override
  Widget build(BuildContext context) {
    ColorConstants _colorConstants = ColorConstants();

    return SafeArea(
      child: Scaffold(
        backgroundColor: _colorConstants.backgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppbar(),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget._question!),
              SelectedTextWidget(showText, widget._itemList![selected].child),
              Expanded(
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Positioned(
                      bottom: -MediaQuery.of(context).size.width / 3,
                      right: -100,
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width + 200,
                          height: MediaQuery.of(context).size.width + 200,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 233, 233, 1),
                            border: Border.all(width: 1, color: Color.fromRGBO(233, 233, 233, 1)),
                            borderRadius:
                                BorderRadius.circular(MediaQuery.of(context).size.width + 100),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(226, 226, 226, 1),
                              border: Border.all(width: 1, color: Color.fromRGBO(226, 226, 226, 1)),
                              borderRadius: BorderRadius.circular(300),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(219, 219, 219, 1),
                                border:
                                    Border.all(width: 1, color: Color.fromRGBO(219, 219, 219, 1)),
                                borderRadius: BorderRadius.circular(300),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  FortuneWheel(
                                    selected: selected,
                                    onAnimationEnd: () {
                                      setState(() {
                                        showText = true;
                                      });
                                    },
                                    indicators: [
                                      FortuneIndicator(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          child: Image.asset("assets/indic.png"),
                                        ),
                                      ),
                                    ],
                                    items: widget._itemList!,
                                  ),
                                  Positioned(
                                    child: IconButton(
                                      iconSize: 120,
                                      icon: Image.asset(
                                        "assets/spin.png",
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          selected = Random().nextInt(widget._itemList!.length);
                                          showText = false;
                                          print(MediaQuery.of(context).size.width);
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
