part of app_splash_screen;

class IntroductionSectionThree extends StatelessWidget {
  const IntroductionSectionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
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
            padding: EdgeInsets.symmetric(horizontal: 58, vertical: 47.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgWebHeaderByD,
                    height: 280.v,
                    width: 294),
                SizedBox(height: 11.v),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 78),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 18.v,
                              width: 19,
                              decoration: BoxDecoration(
                                  color: appTheme.teal300,
                                  borderRadius: BorderRadius.circular(9))),
                          const Spacer(flex: 50),
                          Container(
                              height: 18.v,
                              width: 19,
                              decoration: BoxDecoration(
                                  color: appTheme.teal300,
                                  borderRadius: BorderRadius.circular(9))),
                          const Spacer(flex: 50),
                          Container(
                              height: 18.v,
                              width: 19,
                              decoration: BoxDecoration(
                                  color: appTheme.teal700,
                                  borderRadius: BorderRadius.circular(9)))
                        ])),
                SizedBox(height: 64.v),
                SizedBox(
                    width: 295,
                    child: Text(
                        "SkillBridgeU: Dimulai Dari Mahasiswa, Untuk Mahasiswa",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium!
                            .copyWith(height: 1.43))),
                SizedBox(height: 10.v),
                SizedBox(
                    width: 294,
                    child: Text(
                        "Aplikasi yang didedikasikan untuk pertumbuhan dan kesuksesan mahasiswa. Selamat datang di SkillBridgeU!",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallMontserrat
                            .copyWith(height: 1.33))),
                SizedBox(height: 48.v),
                CustomElevatedButton(
                    width: 206, text: "Selamat Datang!", onPressed: () {}),
                SizedBox(height: 5.v)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
