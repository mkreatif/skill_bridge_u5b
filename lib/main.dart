library root_apps;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_bridge_u5b/pages/splash_screen/app_splash_screen.dart';
import 'package:skill_bridge_u5b/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: AppRoutes.INITIAL,
      initialBinding: SplashScreenBinding(),
      getPages: AppRoutes.routes,
    ),
  );
}
