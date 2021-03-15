import 'package:flutter/material.dart';

class SelectedTextWidget extends StatelessWidget {
  final bool _showText;
  final Widget _child;
  SelectedTextWidget(this._showText, this._child);

  @override
  Widget build(BuildContext context) {
    return _showText
        ? Text(
            _child.toString().substring(6, _child.toString().length - 2).toUpperCase(),
            style: TextStyle(fontFamily: "HelveticaComp", fontSize: 50),
          )
        : Text("");
  }
}
