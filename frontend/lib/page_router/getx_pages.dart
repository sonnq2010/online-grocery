import 'package:get/get.dart';
import 'package:online_grocery/pages/home_page/home_page_binding.dart';
import 'package:online_grocery/pages/home_page/home_page.dart';

class GetxPages {
  GetxPages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: HomePage.NAME,
      page: HomePage.new,
      binding: HomePageBinding(),
    ),
  ];
}
