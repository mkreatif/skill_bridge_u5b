library app_routes;

import 'package:get/get.dart';
import 'package:skill_bridge_u5b/pages/splash_screen/app_splash_screen.dart';

class AppRoutes {
  static const String registertScreen = '/registert_screen';
  static const String splashScreen = '/splash_screen';
  static const String splashScreenoneScreen = '/splash_screenone_screen';
  static const String splashScreentwoScreen = '/splash_screentwo_screen';
  static const String splashScreenthreeScreen = '/splash_screenthree_screen';
  static const String choiceScreen = '/choice_screen';
  static const String loginAbilScreen = '/login_abil_screen';
  static const String forgotPasswordAbilScreen = '/forgot_password_abil_screen';
  static const String successFpAbilScreen = '/success_fp_abil_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String introductionScreen = '/introduction_screen';

  static const INITIAL = splashScreen;

  static final routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding()
    ),
    GetPage(
      name: introductionScreen,
      page: () => const IntroductionScreen(),
      binding: SplashScreenBinding()
    ),
     
  ];
}
