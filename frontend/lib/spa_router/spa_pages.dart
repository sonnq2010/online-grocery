// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:online_grocery/pages/home_page/home_page_binding.dart';
import 'package:online_grocery/pages/home_page/home_page.dart';
import 'package:online_grocery/pages/product_detail_page/product_detail_binding.dart';
import 'package:online_grocery/pages/product_detail_page/product_detail_page.dart';
import 'package:online_grocery/spa_router/spa_binding.dart';

class SpaPage {
  const SpaPage({
    required this.name,
    required this.page,
    required this.binding,
  });

  final String name;
  final Widget Function() page;
  final SpaBinding binding;
}

class SpaPages {
  SpaPages._();

  static const SpaPage INITIAL_PAGE = SpaPage(
    name: HomePage.NAME,
    page: HomePage.new,
    binding: HomePageBinding(),
  );

  static const List<SpaPage> PAGES = [
    SpaPage(
      name: HomePage.NAME,
      page: HomePage.new,
      binding: HomePageBinding(),
    ),
    SpaPage(
      name: ProductDetailPage.NAME,
      page: ProductDetailPage.new,
      binding: ProductDetailBinding(),
    ),
  ];
}
