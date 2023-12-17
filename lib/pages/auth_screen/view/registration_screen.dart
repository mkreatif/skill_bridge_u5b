part of app_auth_screen;

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: BaseLayout(
          child: Center(
            child: Form(
              key: controller.formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 34,
                  vertical: 26.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "REGISTER",
                      style: CustomTextStyles.headlineLarge32,
                    ),
                    SizedBox(height: 44.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Name",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: CustomTextFormField(
                        controller: controller.tecs[0],
                        hintText: "Enter your name",
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Email",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: CustomTextFormField(
                        controller: controller.tecs[1],
                        hintText: "Enter your email",
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Phone Number",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: CustomTextFormField(
                        controller: controller.tecs[2],
                        hintText: "Enter your phone number",
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Username",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: CustomTextFormField(
                        controller: controller.tecs[3],
                        hintText: "Create your Username",
                      ),
                    ),
                    SizedBox(height: 28.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 29),
                        child: Text(
                          "Password",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 29),
                      child: CustomTextFormField(
                        controller: controller.tecs[4],
                        hintText: "Create your Password",
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                      width: 166,
                      buttonStyle: CustomButtonStyles.baseStyle,
                      text: "Daftar Akun",
                    ),
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 69),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgGroup1000004970,
                              height: 150.v,
                              width: 43,
                              margin: EdgeInsets.only(top: 17.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4,
                                top: 1.v,
                                bottom: 132.v,
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Sudah punya akun?",
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    ),
                                    const TextSpan(
                                      text: " ",
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 2,
                                bottom: 132.v,
                              ),
                              decoration: AppDecoration.outlinePrimary,
                              child: GestureDetector(
                                onTap: () {
                                  Get.offAndToNamed(AppRoutes.loginScreen);
                                },
                                child: Text(
                                  "Masuk",
                                  style: CustomTextStyles.bodyMedium15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
