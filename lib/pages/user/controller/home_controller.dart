part of app_user_library;

class HomeController extends GetxController {
  final ScrollController dashboardScroll = ScrollController();
  final RxBool isPinnedDashboard = RxBool(false);
  final RxInt index = RxInt(1);
  
  final List<PopularGigs> popularGigs = [
    PopularGigs(
      name: "Ahong",
      imagePath: ImageConstant.dummy1,
      price: "Rp 20.000",
      job: "Grapic Designer",
    ),
    PopularGigs(
      name: "Sandi Pram",
      imagePath: ImageConstant.dummy2,
      price: "Rp 20.000",
      job: "Grapic Designer",
    ),
    PopularGigs(
      name: "Ririn Riyani",
      imagePath: ImageConstant.dummy3,
      price: "Rp 20.000",
      job: "Grapic Designer",
    ),
    PopularGigs(
      name: "Rara Riyani",
      imagePath: ImageConstant.dummy1,
      price: "Rp 20.000",
      job: "Grapic Designer",
    ),
    PopularGigs(
      name: "Nini Riyani",
      imagePath: ImageConstant.dummy2,
      price: "Rp 20.000",
      job: "Grapic Designer",
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    dashboardScroll.addListener(() {
      if (dashboardScroll.offset > 80) {
        isPinnedDashboard.value = true;
      } else {
        isPinnedDashboard.value = false;
      }
    });
  }
}
