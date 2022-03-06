import 'package:flutter/material.dart';
import 'package:spinner/extensions/context_extension.dart';
import 'package:spinner/models/home_menu_item_model.dart';
import 'package:spinner/utils/constants/style_constants.dart';

class HomeMenuItemButton extends StatelessWidget {
  final HomeMenuItemModel homeMenuItemModel;
  const HomeMenuItemButton(this.homeMenuItemModel, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.lowValue / 2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          shadowColor: homeMenuItemShadowColor,
          elevation: 20,
          fixedSize: Size.fromHeight(context.highValue),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => homeMenuItemModel.navigatePageName),
          );
        },
        child: Text(
          homeMenuItemModel.title,
          style: context.theme.primaryTextTheme.headline5,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
