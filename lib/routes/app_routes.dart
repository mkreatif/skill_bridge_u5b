library app_routes;

import 'package:get/get.dart';
import 'package:skill_bridge_u5b/pages/choice_screen/app_choice_screen.dart';
import 'package:skill_bridge_u5b/pages/auth_screen/app_auth_screen.dart';
import 'package:skill_bridge_u5b/pages/splash_screen/app_splash_screen.dart';
import 'package:skill_bridge_u5b/pages/user/app_user_library.dart';

class AppRoutes {
  static const String registrationScreen = '/registration_screen';
  static const String splashScreen = '/splash_screen';
  static const String choiceScreen = '/choice_screen';
  static const String loginScreen = '/login_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String successFpAbilScreen = '/success_fp_abil_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String introductionScreen = '/introduction_screen';
  static const String userHomeScreen = '/user_home_screen';

  static const INITIAL = splashScreen;

  static final routes = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: introductionScreen,
      page: () => const IntroductionScreen(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: choiceScreen,
      page: () => const ChoiceScreen(),
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      binding: RegistrationBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 250),
    ),
    GetPage(
      name: userHomeScreen,
      page: () => HomeScreen(),
      binding: HomeBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 250),
    ),
  ];
}
