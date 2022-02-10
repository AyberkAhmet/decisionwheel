import 'package:flutter/material.dart';
import 'package:spinner/extensions/context_extension.dart';
import 'package:spinner/utils/constants/list_constants.dart';
import 'package:spinner/views/settingsPages/settings_page.dart';
import 'package:spinner/widgets/homeWidgets/home_menu_item_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          actions: [_buildSettingsButton()],
        ),
        body: Center(
          child: ListView.builder(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: context.width * 0.1),
            shrinkWrap: true,
            itemCount: homeMenuItems.length,
            itemBuilder: (context, index) =>
                HomeMenuItemButton(homeMenuItems[index]),
          ),
        ),
      ),
    );
  }

  IconButton _buildSettingsButton() {
    return IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SettingsPage()),
          );
        },
        icon: const Icon(Icons.settings));
  }
}
