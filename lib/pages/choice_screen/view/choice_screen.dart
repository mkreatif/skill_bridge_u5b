part of app_choice_screen;

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: BaseLayout(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(
              left: 45,
              top: 62.v,
              right: 45,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 44.v,
                  width: 100,
                  margin: const EdgeInsets.only(left: 15),
                ),
                SizedBox(height: 47.v),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "SkillBridgeU",
                    style: CustomTextStyles
                        .headlineLargeMontserratOnPrimaryContainer,
                  ),
                ),
                Container(
                  width: 257,
                  margin: const EdgeInsets.only(
                    left: 6,
                    right: 60,
                  ),
                  child: Text(
                    "Kamu mendaftar Sebagai...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles
                        .headlineLargeMontserratOnPrimaryContainer_1
                        .copyWith(
                      height: 1.33,
                    ),
                  ),
                ),
                SizedBox(height: 40.v),
                ChoiceItem(
                  imagePath: ImageConstant.imgCasualLife3d99x99,
                  title: "Buying",
                  description: "Freelance Services",
                  labelBtn: "Daftar Sekarang Yuk!",
                  onPressed: () {
                    Get.offAndToNamed(AppRoutes.registrationScreen);
                  },
                ),
                Gap(20),
                ChoiceItem(
                  imagePath: ImageConstant.img25Low1,
                  title: "Selling",
                  description: "My Service",
                  labelBtn: "Daftar Sekarang Yuk!",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
