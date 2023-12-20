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

  final List<AnotherYouLikeItem> anotherYouLike = [
    AnotherYouLikeItem(
      price: "250.000",
      description:
          "I will design modern minimalist luxury business logo design",
      name: "Jiyad",
      imagePath: "${ImageConstant.imagePath}/ayl_1.png",
    ),
    AnotherYouLikeItem(
      price: "250.000",
      description:
          "I will design modern minimalist luxury business logo design",
      name: "Kendal Jenner",
      imagePath: "${ImageConstant.imagePath}/ayl_2.png",
    ),
    AnotherYouLikeItem(
      price: "250.000",
      description:
          "I will design modern minimalist luxury business logo design",
      name: "Reisa Sodikin",
      imagePath: "${ImageConstant.imagePath}/ayl_3.png",
    ),
    AnotherYouLikeItem(
      price: "250.000",
      description:
          "I will design modern minimalist luxury business logo design",
      name: "Helper",
      imagePath: "${ImageConstant.imagePath}/ayl_1.png",
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

  Future<bool> onWillPopScope() async {
    return await DialogCollection.confirmation(
        message: "Anda akan keluar dari aplikasi?");
  }
}
