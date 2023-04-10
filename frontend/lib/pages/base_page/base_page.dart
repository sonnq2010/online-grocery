import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_grocery/pages/base_page/base_controller.dart';
import 'package:online_grocery/spa_router/spa_route_builder.dart';
import 'package:online_grocery/widgets/footer/footer.dart';
import 'package:online_grocery/widgets/header/header.dart';

class BasePage extends GetView<BaseController> {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          SpaRouteBuilder(),
          Header(),
          Footer(),
        ],
      ),
    );
  }
}
