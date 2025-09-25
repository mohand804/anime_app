import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/features/deatalis_screen/ui/widgets/icon_text_button.dart';
import 'package:week2/features/deatalis_screen/ui/widgets/images_and_text.dart';

class AnimeDetailsScreen extends StatefulWidget {
  const AnimeDetailsScreen({super.key});

  @override
  State<AnimeDetailsScreen> createState() => _AnimeDetailsScreenState();
}

class _AnimeDetailsScreenState extends State<AnimeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/cover.png"),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 40),

            child: Container(color: Colors.black.withValues(alpha: 0.4)),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(128, 255, 238, 238),
                  Color.fromARGB(128, 69, 44, 117),
                ],
                begin: Alignment.topRight,
                end: Alignment.centerLeft,
              ),
            ),
            child: ImagesAndText(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100.h,
        decoration: BoxDecoration(color: ColorsManager.backgroundColor),
        child: Row(
          children: [
            IconTextButton(
              icon: 'assets/svgs/player.svg',
              text: 'Perview',
              color: ColorsManager.independence,
              iconWidth: 22,
            ),
            IconTextButton(
              icon: 'assets/svgs/eye.svg',
              text: 'Watch Now',
              iconWidth: 22,
            ),
          ],
        ),
      ),
    );
  }
}
