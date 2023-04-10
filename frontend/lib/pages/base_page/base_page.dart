import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:indexed/indexed.dart';
import 'package:online_grocery/pages/base_page/base_controller.dart';
import 'package:online_grocery/theme_constant.dart';
import 'package:online_grocery/widgets/footer/footer.dart';
import 'package:online_grocery/widgets/header/header.dart';

class BasePage extends GetView<BaseController> {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Indexer(
        children: [
          const Header(),
          ListView.builder(
            padding: const EdgeInsets.only(
              top: ThemeConstant.APP_BAR_EXPANDED_HEIGHT,
            ),
            shrinkWrap: true,
            primary: false,
            itemCount: 300,
            controller: controller.scrollController,
            itemBuilder: (context, index) {
              return Center(child: Text(index.toString()));
            },
          ),
          const Positioned(
            bottom: 0,
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
