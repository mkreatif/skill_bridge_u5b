library root_apps;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_bridge_u5b/pages/splash_screen/view/splash_screen.dart';

part './routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      getPages: AppRoutes.routes,
    ),
  );
}
