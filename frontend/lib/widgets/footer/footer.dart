import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              children: const [
                Text('This is footer'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
