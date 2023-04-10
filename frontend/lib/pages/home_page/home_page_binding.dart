import 'package:get/get.dart';
import 'package:online_grocery/pages/home_page/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}
