import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_grocery/spa_router/spa_router.dart';

class SpaRouteBuilder extends GetView<SpaRouter> {
  const SpaRouteBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: controller.currentPage.stream,
      builder: (context, snapshot) {
        final page = controller.currentPage.value;

        page.binding.put();
        return page.page();
      },
    );
  }
}
