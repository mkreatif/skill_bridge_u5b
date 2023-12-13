library root_apps;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skill_bridge_u5b/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: AppRoutes.INITIAL,
      getPages: AppRoutes.routes,
    ),
  );
}
