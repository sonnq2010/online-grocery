import 'package:flutter/material.dart';
import 'package:online_grocery/widgets/header/child_widgets/branding_logo.dart';
import 'package:online_grocery/widgets/header/child_widgets/branding_text.dart';

class Branding extends StatelessWidget {
  const Branding({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Row(
          children: const [
            BrandingLogo(),
            BrandingText(),
          ],
        ),
      ),
    );
  }
}
