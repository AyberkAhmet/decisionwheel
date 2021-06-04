import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SelectedTextWidget extends StatelessWidget {
  final bool _showText;
  final Widget _child;
  SelectedTextWidget(this._showText, this._child);

  @override
  Widget build(BuildContext context) {
    return _showText
        ? AutoSizeText(
          _child.toString().substring(6, _child.toString().length - 2).toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "PoeNewBold",
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),
        )
        : Text("");
  }
}
