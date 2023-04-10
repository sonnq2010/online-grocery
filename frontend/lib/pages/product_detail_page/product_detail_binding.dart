import 'package:get/get.dart';
import 'package:online_grocery/spa_router/spa_binding.dart';
import 'product_detail_controller.dart';

class ProductDetailBinding implements SpaBinding {
  const ProductDetailBinding();

  @override
  void put() {
    Get.put(ProductDetailController());
  }

  @override
  void delete() {
    Get.delete<ProductDetailController>();
  }
}
