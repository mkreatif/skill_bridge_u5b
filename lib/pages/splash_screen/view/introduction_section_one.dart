part of app_splash_screen;

class IntroductionSectionOne extends StatelessWidget {
  const IntroductionSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
          child: GetBuilder<SplashScreenController>(builder: (ctrl) {
            return CustomElevatedButton(
              buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: appTheme.blueGray800,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {
                ctrl.introductionTabController.index = 1;
              },
              width: 206,
              text: "Explore Sekarang!",
            );
          }),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: BaseLayout(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 38.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Center(child: _buildHeadphonesSection(context))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 129),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 18.v,
                        width: 19,
                        decoration: BoxDecoration(
                          color: appTheme.teal700,
                          borderRadius: BorderRadius.circular(
                            9,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 50,
                      ),
                      Container(
                        height: 18.v,
                        width: 19,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(
                            9,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 50,
                      ),
                      Container(
                        height: 18.v,
                        width: 19,
                        decoration: BoxDecoration(
                          color: appTheme.teal300,
                          borderRadius: BorderRadius.circular(
                            9,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.v),
                SizedBox(
                  width: 243,
                  child: Text(
                    "Selamat Datang di SkillBridgeU!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeMontserrat.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                SizedBox(
                  width: 256,
                  child: Text(
                    "Platform inovatif untuk memfasilitasi mahasiswa dalam menawarkan jasa freelance serta memungkinkan mahasiswa lain sebagai pencari jasa untuk dengan mudah memesan jasa yang ditawarkan.",
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleSmallMontserrat.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeadphonesSection(BuildContext context) {
    return SizedBox(
      height: 350.v,
      width: 360,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup9,
            height: 400.v,
            width: 310,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 40.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHeadphones5,
            height: 190.v,
            width: 186,
            alignment: Alignment.topRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 47.v,
            width: 100,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 46.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 35.v,
            width: 72,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 88,
              top: 29.v,
            ),
          ),
        ],
      ),
    );
  }
}
