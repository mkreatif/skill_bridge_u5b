part of app_auth_screen;

class ForgotPasswordController extends GetxController {

  final RxBool sendingFormulir = RxBool(false);
  final List<TextEditingController> tecs =
      List.generate(2, (index) => TextEditingController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
