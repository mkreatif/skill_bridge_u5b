part of app_auth_screen;

class LoginController extends GetxController {
  List<TextEditingController> tecs =List.generate(2, (index) => TextEditingController());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// Navigates to the registertScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Get.offAndToNamed(AppRoutes.registrationScreen);
  }
}
