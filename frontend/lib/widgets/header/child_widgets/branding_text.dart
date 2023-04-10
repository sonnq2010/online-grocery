import 'package:flutter/material.dart';

// TODO: Implement BrandingText
class BrandingText extends StatelessWidget {
  const BrandingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Online Grocery',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
