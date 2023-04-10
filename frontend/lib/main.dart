import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_grocery/app.dart';
import 'package:online_grocery/spa_router/spa_router.dart';
import 'package:online_grocery/pages/base_page/base_controller.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  // Prepare all needed
  prepare();

  // Run app
  runApp(const OnlineGrocery());
}

void prepare() {
  // Ensure widget binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // To remove /#/ on the url
  setPathUrlStrategy();

  Get.put(BaseController());
  Get.put(SpaRouter());
}
