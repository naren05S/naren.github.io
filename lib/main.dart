import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:portfolio/app/locator.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/app/theme.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_strategy/url_strategy.dart';
import 'ui/views/main/main_view.dart';

Future main() async {
  setPathUrlStrategy();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      navigatorKey: StackedService.navigatorKey,
      title: "Naren",
      debugShowCheckedModeBanner: false,
      home: MainView(),
      themeMode: ((defaultTargetPlatform == TargetPlatform.iOS) ||
              (defaultTargetPlatform == TargetPlatform.android))
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: neumorphicLightTheme,
      darkTheme: neumorphicDarkTheme,
    );
  }
}
