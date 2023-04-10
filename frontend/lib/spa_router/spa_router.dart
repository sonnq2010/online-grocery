import 'package:get/get.dart';
import 'package:online_grocery/spa_router/spa_pages.dart';

class SpaRouter extends GetxController {
  Rx<SpaPage> currentPage = Rx(SpaPages.INITIAL_PAGE);

  void setCurrentPage(SpaPage page) {
    currentPage.value = page;
  }

  void toNamed(String name) {
    final page = _getTargetPage(name);
    if (page == null) return;

    setCurrentPage(page);
  }

  SpaPage? _getTargetPage(String pageName) {
    for (final p in SpaPages.PAGES) {
      if (p.name == pageName) return p;
    }

    return null;
  }
}
