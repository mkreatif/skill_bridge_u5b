part of app_user_library;

class HomeController extends GetxController {
  final ScrollController dashboardScroll = ScrollController();
  final RxBool isPinnedDashboard = RxBool(false);
  final RxInt index = RxInt(1);

  @override
  void onInit() {
    super.onInit();
    dashboardScroll.addListener(() {
      if (dashboardScroll.offset > 80) {
        isPinnedDashboard.value= true;
      }else{
        isPinnedDashboard.value = false;
      }
    });
  }
}
