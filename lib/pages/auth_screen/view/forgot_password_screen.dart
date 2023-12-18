part of app_auth_screen;

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({Key? key})
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
            padding: EdgeInsets.only(
              top: 100,
            ),
            child: Obx(
              () => controller.sendingFormulir.value
                  ? _notification()
                  : _formulir(),
            )),
      ),
    );
  }

  Widget _notification() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Success!",
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Gap(20),
          Text(
            "Terima kasih! Kami telah mengirimkan instruksi untuk mengatur ulang kata sandi Anda ke alamat email yang terdaftar. Silakan periksa kotak masuk Anda dan ikuti petunjuk yang diberikan untuk mengakses kembali akun Anda.",
            textAlign: TextAlign.center,
            style: safeGoogleFont(
              'Poppins',
              fontSize: 15,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: Colors.white,
            ),
          ),
          Gap(50),
          CustomElevatedButton(
            width: 119,
            text: "Kembali",
            onPressed: () {
              Get.offAndToNamed(AppRoutes.loginScreen);
            },
            buttonStyle: CustomButtonStyles.baseStyle,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  Widget _formulir() {
    return Form(
      key: controller.formKey,
      child: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: 50,
              right: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    Get.offAndToNamed(AppRoutes.loginScreen);
                  },
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Lupa Password?",
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Enter your username and email",
                    style: CustomTextStyles.titleSmallOnPrimaryContainer,
                  ),
                ),
                SizedBox(height: 32.v),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    "Username",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: CustomTextFormField(
                    controller: controller.tecs[0],
                    hintText: "Enter your username",
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 28.v),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Text(
                    "Email",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: CustomTextFormField(
                    controller: controller.tecs[1],
                    hintText: "Enter your email",
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 37.v),
                CustomElevatedButton(
                  width: 119,
                  text: "Kirim",
                  onPressed: () {
                    controller.sendingFormulir.value = true;
                  },
                  buttonStyle: CustomButtonStyles.baseStyle,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 37.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
