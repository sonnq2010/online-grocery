import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_grocery/page_router/getx_pages.dart';
import 'package:online_grocery/pages/home_page/home_page.dart';

class PageRouter extends StatelessWidget {
  const PageRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: HomePage.NAME,
      getPages: GetxPages.pages,
    );
  }
}
