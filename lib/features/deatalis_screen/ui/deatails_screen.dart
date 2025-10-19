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
        children: [
          Container(color: ColorsManager.deepviolet),
          Positioned(
            bottom: -80.h,
            left: -20.w,
            child: Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF713649).withValues(alpha: 0.20),
                    Color(0xFF713649).withValues(alpha: 0.12),
                    Color(0xFF713649).withValues(alpha: 0.03),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF713649).withValues(alpha: 0.15),
                    blurRadius: 15.r,
                    spreadRadius: 3.r,
                    offset: Offset(0, 3.h),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 130.h,
            right: -50.w,
            child: Container(
              width: 150.w,
              height: 150.h,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color(0xFF713649).withValues(alpha: 0.30),
                    Color(0xFF713649).withValues(alpha: 0.05),
                    Color(0xFF713649).withValues(alpha: 0.06),
                  ],
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF713649).withValues(alpha: 0.3),
                    blurRadius: 18.r,
                    spreadRadius: 4.r,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(child: Column(children: [ImagesAndText()])),
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
              iconWidth: 11,
            ),
          ],
        ),
      ),
    );
  }
}
