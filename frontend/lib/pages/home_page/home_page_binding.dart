import 'package:get/get.dart';
import 'package:online_grocery/pages/home_page/home_page_controller.dart';
import 'package:online_grocery/spa_router/spa_binding.dart';

class HomePageBinding implements SpaBinding {
  const HomePageBinding();

  @override
  void put() {
    Get.put(HomePageController());
  }

  @override
  void delete() {
    Get.delete<HomePageController>();
  }
}
