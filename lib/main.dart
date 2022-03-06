import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:spinner/services/ad_state.dart';
import 'package:spinner/theme/custom_theme.dart';
import 'package:spinner/utils/constants/string_constants.dart';
import 'package:spinner/views/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  runApp(
    Provider.value(
      value: adState,
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BetterFeedback(
      child: MaterialApp(
        title: materialAppTitle,
        debugShowCheckedModeBanner: false,
        theme: customTheme,
        home: const HomePage(),
      ),
    );
  }
}
