import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ShowColorPicker extends StatefulWidget {
  const ShowColorPicker({Key? key}) : super(key: key);

  @override
  _ShowColorPickerState createState() => _ShowColorPickerState();
}

class _ShowColorPickerState extends State<ShowColorPicker> {
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Pick a color!'),
      content: SingleChildScrollView(
        child: ColorPicker(
          pickerColor: pickerColor,
          onColorChanged: changeColor,
          pickerAreaHeightPercent: 0.8,
          enableAlpha: false,
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Got it'),
          onPressed: () {
            setState(() => currentColor = pickerColor);
            Navigator.of(context).pop(currentColor);
          },
        ),
      ],
    );
  }
}
