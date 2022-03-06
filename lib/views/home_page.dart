import 'dart:io';

import 'package:flutter/material.dart';
import 'package:spinner/extensions/context_extension.dart';
import 'package:spinner/utils/constants/list_constants.dart';
import 'package:spinner/views/settingsPages/settings_page.dart';
import 'package:spinner/widgets/homeWidgets/home_menu_item_button.dart';
import 'package:user_messaging_platform/user_messaging_platform.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    if (Platform.isIOS) {
      showATTPermissionRequest();
    }
    updateConsent();
  }
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

  void updateConsent() async {
  // Make sure to continue with the latest consent info.
  var info = await UserMessagingPlatform.instance.requestConsentInfoUpdate();

  // Show the consent form if consent is required.
  if (info.consentStatus == ConsentStatus.required) {
    // `showConsentForm` returns the latest consent info, after the consent from has been closed.
    info = await UserMessagingPlatform.instance.showConsentForm();
  }
}

  void showATTPermissionRequest() async {
  final status = await UserMessagingPlatform.instance.getTrackingAuthorizationStatus();

  if (status == TrackingAuthorizationStatus.notDetermined) {
    await UserMessagingPlatform.instance.requestTrackingAuthorization();
  }
}
}
