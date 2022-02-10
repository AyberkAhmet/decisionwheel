import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:provider/provider.dart';
import 'package:spinner/extensions/context_extension.dart';
import 'package:spinner/models/wheel_model.dart';
import 'package:spinner/services/ad_state.dart';
import 'package:spinner/utils/constants/string_constants.dart';
import 'package:spinner/utils/constants/style_constants.dart';
import 'package:spinner/widgets/custom_appbar.dart';

class WheelPage extends StatefulWidget {
  final WheelModel wheelModel;
  const WheelPage(this.wheelModel, {Key? key}) : super(key: key);

  @override
  _WheelPageState createState() => _WheelPageState();
}

class _WheelPageState extends State<WheelPage> {
  int selected = 0;
  bool showText = false;

  late double bottomContainerHeight;

  StreamController<int> controller = StreamController<int>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final adState = Provider.of<AdState>(context);
    adState.initialization.then((status) {
      setState(() {
        adState.createInterstitialAd();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    showText = false;
  }

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final adState = Provider.of<AdState>(context);

    Text selectedTextWidget =
        widget.wheelModel.fortuneItems[selected].child as Text;
    String? selectedText = selectedTextWidget.data;

    bottomContainerHeight = (context.height - (context.height / 6));

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: _buildQuestionText(),
            ),
            Expanded(
              flex: 3,
              child: _buildAnswerText(selectedText!),
            ),
            Expanded(
              flex: 25,
              child: Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Positioned(
                    bottom: -(bottomContainerHeight / 5),
                    right: -(bottomContainerHeight / 5),
                    left: -(bottomContainerHeight / 5),
                    child: Center(
                      child: _buildOutsideCircle(context, adState),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerText(String selectedText) {
    return showText
        ? AutoSizeText(
            selectedText,
            style: context.theme.primaryTextTheme.headline3,
          )
        : const Text("");
  }

  AutoSizeText _buildQuestionText() {
    return AutoSizeText(
      widget.wheelModel.question,
      style: context.theme.primaryTextTheme.headline5,
    );
  }

  Container _buildOutsideCircle(BuildContext context, AdState adState) {
    return Container(
      padding: EdgeInsets.all(context.mediumValue),
      width: bottomContainerHeight,
      height: bottomContainerHeight,
      decoration:
          BoxDecoration(color: outsideCircleColor, shape: BoxShape.circle),
      child: _buildMiddleCircle(context, adState),
    );
  }

  Container _buildMiddleCircle(BuildContext context, AdState adState) {
    return Container(
      padding: EdgeInsets.all(context.mediumValue),
      decoration: BoxDecoration(
        color: middleCircleColor,
        shape: BoxShape.circle,
      ),
      child: _buildInsideCircle(context, adState),
    );
  }

  Container _buildInsideCircle(BuildContext context, AdState adState) {
    return Container(
      padding: EdgeInsets.all(context.mediumValue),
      decoration: BoxDecoration(
        color: insideCircleColor,
        shape: BoxShape.circle,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [_buildFortuneWheel(adState), _buildTurnButton()],
      ),
    );
  }

  FortuneWheel _buildFortuneWheel(AdState adState) {
    return FortuneWheel(
      animateFirst: false,
      selected: controller.stream,
      onAnimationEnd: () {
        setState(() {
          adState.showInterstitialAd();
          showText = true;
        });
      },
      indicators: [
        _buildWheelIndicator(),
      ],
      items: widget.wheelModel.fortuneItems,
    );
  }

  Positioned _buildTurnButton() {
    return Positioned(
      child: IconButton(
        iconSize: 120,
        icon: Image.asset(
          spinIconImageUrl,
        ),
        onPressed: () {
          setState(() async {
            int _randInt =
                Fortune.randomInt(0, widget.wheelModel.fortuneItems.length);
            controller.add(_randInt);
            selected = _randInt;
            showText = false;
          });
        },
      ),
    );
  }

  FortuneIndicator _buildWheelIndicator() {
    return FortuneIndicator(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: 80,
        height: 80,
        child: Image.asset(indicatorIconImageUrl),
      ),
    );
  }
}
