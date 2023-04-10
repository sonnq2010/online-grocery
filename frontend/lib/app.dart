import 'package:flutter/material.dart';
import 'package:online_grocery/constants.dart';
import 'package:online_grocery/pages/base_page/base_page.dart';

class OnlineGrocery extends StatelessWidget {
  const OnlineGrocery({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constant.TITLE,
      home: BasePage(),
    );
  }
}
