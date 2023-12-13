part of app_splash_screen;

class SplashScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController introductionTabController =
      TabController(length: 3, vsync: this);

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoutes.introductionScreen);
    });
  }
}
