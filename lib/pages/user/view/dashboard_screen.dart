part of app_user_library;

class DashboardScreen extends GetView<HomeController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: NestedScrollView(
        controller: controller.dashboardScroll,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              foregroundColor: appTheme.blueGray800,
              pinned: false,
              elevation: 1,
              toolbarHeight: 80,
              titleSpacing: 0,
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            "Hi, Welcomeback \nAhong",
                            style: safeGoogleFont(
                              FontFamily.poppins,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: appTheme.blueGray800,
                            ),
                          ),
                        ),
                        Image.asset(
                          ImageConstant.imgLogo,
                          width: 44,
                          height: 44,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            borderRadius: 50,
                            prefix: Icon(Icons.search),
                            hintText: "Cari Jasa...",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProjectProgress(
                  progress: 60,
                ),
                CustomDivider(
                  label: "Popular Gigs",
                  color: appTheme.blueGray800,
                  fontSize: 18,
                ),
                CustomDivider(
                  label: "Another You Like",
                  color: appTheme.blueGray800,
                  fontSize: 18,
                  textDirection: TextDirection.rtl,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
