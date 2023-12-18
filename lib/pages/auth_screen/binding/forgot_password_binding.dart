part of app_auth_screen;

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController(), fenix: true);
  }
  
}