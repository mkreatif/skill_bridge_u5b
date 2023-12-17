part of app_auth_screen;

class RegistrationController extends GetxController {
  List<TextEditingController> tecs =
      List.generate(5, (index) => TextEditingController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
