import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/services.dart';

String showDownTime = "downtime";
String socketsUrl = "socket_url";
String reitBonds = "techSkill";
String globalSearch = "globalsearch";

class RemoteConfigService {
  final RemoteConfig _remoteConfig;

  final defaults = <String, dynamic>{showDownTime: false};

  static RemoteConfigService _instance;

  static Future<RemoteConfigService> getInstance() async {
    if (_instance == null) {
      _instance = RemoteConfigService(
        remoteConfig: await RemoteConfig.instance,
      );
    }

    return _instance;
  }

  RemoteConfigService({RemoteConfig remoteConfig})
      : _remoteConfig = remoteConfig;

  String get getDownTime => _remoteConfig.getString(showDownTime);

  String get getSocketUrl => _remoteConfig.getString(socketsUrl);

  String get getReitBonds => _remoteConfig.getString(reitBonds);

  String get getGlobalSearch => _remoteConfig.getString(globalSearch);

  Future initialise() async {
    try {
      await _fetchAndActivate();
    } on PlatformException catch (exception) {
      // Fetch exception.
      print(exception);
    } catch (e) {
      print('EXCEPTION: $e');
      print('Unable to fetch remote config. Cached or default values will be used');
    }
  }

  Future _fetchAndActivate() async {
    try {
      await _remoteConfig.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(seconds: 10),
      ));
      await _remoteConfig.fetchAndActivate();
    } catch (e) {
      print('EXCEPTION: $e');
    }
  }
}
