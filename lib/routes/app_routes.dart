part of root_apps;

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

  static const INITIAL = splashScreen;

  static final routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
    ),
  ];
}
