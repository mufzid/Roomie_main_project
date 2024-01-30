import 'package:flutter/material.dart';

class SecondaryImage extends StatelessWidget {
  const SecondaryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: const DecorationImage(
            fit: BoxFit.cover, image: AssetImage('asset/images/room1.jpeg')),
      ),
    );
  }
}
