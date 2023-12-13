part of app_splash_screen;

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashScreenController>(builder: (ctrl) {
        return TabBarView(
          controller: ctrl.introductionTabController,
          children: [
            IntroductionSectionOne(),
            IntroductionSectionTwo(),
            IntroductionSectionThree(),
          ],
        );
      }),
    );
  }
}
