part of app_splash_screen;

class IntroductionSectionTwo extends StatelessWidget {
  const IntroductionSectionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
          child: GetBuilder<SplashScreenController>(
            builder: (ctrl) {
              return CustomElevatedButton(
                onPressed: () {
                  ctrl.introductionTabController.index = 2;
                },
                width: 206,
                text: "Explore Sekarang!",
              );
            }
          ),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
              color: theme.colorScheme.onPrimaryContainer,
              gradient: LinearGradient(
                  begin: const Alignment(0.5, 0),
                  end: const Alignment(0.5, 1),
                  colors: [appTheme.indigo300, appTheme.lime100])),
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 44.v),
            padding: EdgeInsets.symmetric(vertical: 44.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgCasualLife3d,
                    height: 265.v,
                    width: 275),
                SizedBox(height: 28.v),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 18.v,
                      width: 19,
                      decoration: BoxDecoration(
                          color: appTheme.teal300,
                          borderRadius: BorderRadius.circular(9))),
                  Container(
                      height: 18.v,
                      width: 19,
                      margin: const EdgeInsets.only(left: 41),
                      decoration: BoxDecoration(
                          color: appTheme.teal700,
                          borderRadius: BorderRadius.circular(9))),
                  Container(
                      height: 18.v,
                      width: 19,
                      margin: const EdgeInsets.only(left: 41),
                      decoration: BoxDecoration(
                          color: appTheme.teal300,
                          borderRadius: BorderRadius.circular(9)))
                ]),
                SizedBox(height: 61.v),
                SizedBox(
                  width: 259,
                  child: Text(
                    "SkillBridgeU Siap Membantumu!",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineLargeMontserrat.copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
                SizedBox(
                  width: 272,
                  child: Text(
                    "Kini saatnya memulai proyek impianmu dan temukan solusi yang kamu butuhkan. Bersama SkillBridgeU, semuanya terbukti.",
                    maxLines: 4,
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

}
