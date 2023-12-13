part of app_splash_screen;

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashScreenController(), permanent: true);
  }
}
