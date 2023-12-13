part of app_login_screen;

class LoginController extends GetxController {
  TextEditingController usernameFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Navigates to the registertScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Get.offAndToNamed(AppRoutes.registertScreen);
  }
}
