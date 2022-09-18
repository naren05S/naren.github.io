import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:portfolio/app/locator.dart';

import 'package:flutter/material.dart';
import 'package:portfolio/app/theme.dart';
import 'package:portfolio/remote_config.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_strategy/url_strategy.dart';
import 'ui/views/main/main_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setPathUrlStrategy();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RemoteConfigService remoteConfigService = locator<RemoteConfigService>();


  @override
  void initState() {
    super.initState();
    initializeRemote();
  }

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

  Future<void> initializeRemote() async {
    try {
      await remoteConfigService.initialise();
      try {
        String getReitBonds = remoteConfigService.getReitBonds != null ? remoteConfigService.getReitBonds : '';
        print("getReitBonds==========" + getReitBonds.toString());
        if (getReitBonds != null && getReitBonds.toString().trim() != "") {
          // List tempList = json.decode(getReitBonds.replaceAll(" ", ""));
          // for (int i = 0; i < tempList.length; i++) {
          //   EtfListing obj = new EtfListing();x
          //   obj.stockName = tempList[i]["scheme"];
          //   obj.stockCode = tempList[i]["isecStkCode"];
          //   obj.isin = tempList[i]["isin"];
          //   globalReITList.add(obj);
          // }
        }
      } catch (e) {
        print("getReitBonds==========" + e.toString());
      }
    } catch (e) {
      print(e);
    }
  }
}
