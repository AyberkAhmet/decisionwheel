import 'package:flutter/material.dart';
import 'package:spinner/extensions/context_extension.dart';

class SettingMenuItemButton extends StatelessWidget {
  final VoidCallback onpressed;
  final IconData icon;
  final Color iconColor;
  final String title;
  const SettingMenuItemButton({
    required this.onpressed,
    required this.icon,
    required this.iconColor,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 40,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: context.theme.primaryTextTheme.headline5
          ),
        ],
      ),
    );
  }
}
