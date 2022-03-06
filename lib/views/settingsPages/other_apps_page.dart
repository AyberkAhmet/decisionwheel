import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OtherAppsPage extends StatelessWidget {
  OtherAppsPage({Key? key}) : super(key: key);

  final String bbAppUrl = Platform.isAndroid
      ? "https://play.google.com/store/apps/details?id=com.bayrak.bayrakBulmaca"
      : "https://play.google.com/store/apps/details?id=com.bayrak.bayrakBulmaca";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () => _launchURL(bbAppUrl),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(
                        "assets/bb_logo.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Text("FLAG GUESSER"),
                      subtitle: Text("Is it difficult for you to decide?"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _launchURL(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url ';
  }
}
