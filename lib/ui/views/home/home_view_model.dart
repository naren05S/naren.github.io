import 'package:portfolio/app/configs.dart';
import 'package:portfolio/core/services/url_launcher_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final UrlLauncherService _urlLauncherService = UrlLauncherService();

  bool isIntroCompleted = false;
  bool isHoveredOnGetInTouch = false;
  bool isShortIntroCompleted = false;


  Map<String, String> skills = {
    "Flutter Developer": "assets/images/android.png",
    "Web Developer": "assets/images/web.png",
    "UI Developer": "assets/images/design.png",
  };


  changeShortIntroToCompleted() {
    isShortIntroCompleted = true;
    notifyListeners();
  }

  changeHoveredBoolean(bool value) {
    isHoveredOnGetInTouch = value;
    notifyListeners();
  }

  changeIntroToCompleted() {
    isIntroCompleted = true;
    notifyListeners();
  }

  getInTouch() async {
    await _urlLauncherService.launchUrl(SocialLinks.linkedinUrl);
  }

  init(context) async {}

  navigateToUrl(String url) async {
    await _urlLauncherService.launchUrl(url);
  }
}
