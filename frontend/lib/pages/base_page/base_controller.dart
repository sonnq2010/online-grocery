import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  // Scroll controller attach to multi pages
  // Attach to one page at a time
  final ScrollController scrollController = ScrollController();
}
