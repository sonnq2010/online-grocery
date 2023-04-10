import 'package:flutter/material.dart';
import 'package:online_grocery/widgets/header/child_widgets/action_button.dart';

class ActionButtonGroup extends StatelessWidget {
  const ActionButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ActionButton(
          icon: Icons.favorite_outline,
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.notifications_outlined,
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.person_outline_rounded,
          onPressed: () {},
        ),
        ActionButton(
          icon: Icons.shopping_cart_outlined,
          onPressed: () {},
        ),
      ],
    );
  }
}
