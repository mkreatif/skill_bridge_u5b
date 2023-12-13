part of app_login_screen;

// ignore_for_file: must_be_immutable
class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: BaseLayout(
          child: Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 63,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(100),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Welcome Back!",
                            style: theme.textTheme.headlineLarge)),
                    Gap(8),
                    Align(
                        alignment: Alignment.center,
                        child: Text("Enter your username and password",
                            style:
                                CustomTextStyles.titleSmallOnPrimaryContainer)),
                    Gap(32),
                    Text("Username", style: theme.textTheme.titleSmall),
                    Gap(3),
                    CustomTextFormField(
                      controller: controller.usernameFieldController,
                      hintText: "Create your Username",
                    ),
                    Gap(28),
                    Text("Password", style: theme.textTheme.titleSmall),
                    Gap(3),
                    CustomTextFormField(
                      controller: controller.passwordFieldController,
                      hintText: "Create your password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    Gap(19),
                    Container(
                      margin: const EdgeInsets.only(left: 9),
                      decoration: AppDecoration.outlinePrimary,
                      child: Text(
                        "Lupa Password?",
                        style: CustomTextStyles.bodyMediumBlack900
                            .copyWith(decoration: TextDecoration.underline),
                      ),
                    ),
                    Gap(45),
                    CustomElevatedButton(
                      buttonStyle: CustomButtonStyles.baseStyle,
                      width: 128,
                      text: "Masuk",
                      alignment: Alignment.center,
                    ),
                    Gap(14),
                    CustomElevatedButton(
                      width: 166,
                      text: "Daftar Akun",
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallMontserratSemiBold,
                      onPressed: () {},
                      alignment: Alignment.center,
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
