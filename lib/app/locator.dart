import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../remote_config.dart';
import 'locator.config.dart';

GetIt locator = GetIt.instance;

@injectableInit
Future setupLocator() async {
  $initGetIt(locator);
  var remoteConfigService = await RemoteConfigService.getInstance();
  locator.registerSingleton(remoteConfigService);
}


