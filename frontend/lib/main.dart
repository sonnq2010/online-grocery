import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_grocery/app.dart';
import 'package:online_grocery/spa_router/spa_router.dart';
import 'package:online_grocery/pages/base_page/base_controller.dart';

void main() {
  // Prepare all needed
  prepare();

  // Run app
  runApp(const OnlineGrocery());
}

void prepare() {
  Get.put(BaseController());
  Get.put(SpaRouter());
}
