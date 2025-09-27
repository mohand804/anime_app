import 'package:flutter/material.dart';

class ImageHero extends StatelessWidget {
  const ImageHero({super.key});
  static const double height = 519;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Image.asset('assets/images/cover.png', fit: BoxFit.cover),
    );
  }
}
