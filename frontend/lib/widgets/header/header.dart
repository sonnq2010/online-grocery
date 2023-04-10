import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_grocery/pages/base_page/base_controller.dart';
import 'package:online_grocery/theme_constant.dart';
import 'package:online_grocery/widgets/header/child_widgets/action_button_group.dart';
import 'package:online_grocery/widgets/header/child_widgets/branding.dart';
import 'package:online_grocery/widgets/header/child_widgets/search_bar.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isExpanded = true;
  final controller = Get.find<BaseController>();

  @override
  void initState() {
    super.initState();

    controller.scrollController.addListener(() {
      if (controller.scrollController.position.pixels <= 0) {
        if (!isExpanded) {
          setState(() {
            isExpanded = true;
          });
        }
      } else if (controller.scrollController.position.pixels >= 24) {
        if (isExpanded) {
          setState(() {
            isExpanded = false;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: Colors.green,
      height: isExpanded
          ? ThemeConstant.APP_BAR_EXPANDED_HEIGHT
          : ThemeConstant.APP_BAR_COLLAPSED_HEIGHT,
      duration: const Duration(milliseconds: 200),
      curve: Curves.decelerate,
      child: Row(
        children: const [
          Branding(),
          SearchBar(),
          Spacer(),
          ActionButtonGroup(),
        ],
      ),
    );
  }
}
