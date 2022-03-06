// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:typed_data';

import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spinner/extensions/context_extension.dart';
import 'package:spinner/utils/constants/string_constants.dart';
import 'package:spinner/views/settingsPages/other_apps_page.dart';
import 'package:spinner/widgets/settingsPageWidgets/setting_menu_item_button.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _urlStore = Platform.isAndroid
        ? "https://play.google.com/store/apps/details?id=com.desicion.spinner"
        : "https://apps.apple.com/us/story/id1310535450?itscg=10000&itsct=";

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.extent(
            shrinkWrap: true,
            padding: EdgeInsets.all(context.lowValue),
            mainAxisSpacing: context.lowValue,
            crossAxisSpacing: context.lowValue,
            maxCrossAxisExtent: context.width * 0.5,
            childAspectRatio: 1,
            children: [
              SettingMenuItemButton(
                onpressed: () {
                  _launchURL(_urlStore);
                },
                icon: Icons.star,
                iconColor: Colors.yellow,
                title: rateUsButtonTitle,
              ),
              SettingMenuItemButton(
                onpressed: () {
                  BetterFeedback.of(context).show((feedback) async {
                    final screenshotFilePath =
                        await writeImageToStorage(feedback.screenshot);

                    final Email email = Email(
                      body: feedback.text,
                      subject: emailSubject,
                      recipients: [emailAddress],
                      attachmentPaths: [screenshotFilePath],
                      isHTML: false,
                    );
                    await FlutterEmailSender.send(email);
                  });
                },
                icon: Icons.feedback,
                iconColor: Colors.green,
                title: feedbackButtonTitle,
              ),
              SettingMenuItemButton(
                onpressed: () {
                  final snackBar = SnackBar(
                    content: const Text('Remove Ads unavailable!'),
                    action: SnackBarAction(
                      label: 'OK',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: Icons.do_not_disturb,
                iconColor: Colors.red,
                title: removeAdsButtonTitle,
              ),
              SettingMenuItemButton(
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtherAppsPage(),
                      ));
                },
                icon: Icons.apps,
                iconColor: Colors.blue,
                title: otherAppsButtonTitle,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.lowValue),
            child: ElevatedButton(
                onPressed: () => _launchURL(buyMeCoffeeUrl),
                child: Image.asset(buyMeCoffeeImageUrl)),
          ),
        ],
      ),
    );
  }

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url ';
  }

  Future<String> writeImageToStorage(Uint8List feedbackScreenshot) async {
    final Directory output = await getTemporaryDirectory();
    final String screenshotFilePath = '${output.path}/feedback.png';
    final File screenshotFile = File(screenshotFilePath);
    await screenshotFile.writeAsBytes(feedbackScreenshot);
    return screenshotFilePath;
  }
}
