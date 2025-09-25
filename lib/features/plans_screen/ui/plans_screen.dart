import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';
import 'package:week2/features/plans_screen/ui/widgets/continue_button.dart';
import 'package:week2/features/plans_screen/ui/widgets/plans_container.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorsManager.accentBlue.withValues(alpha: 0.9),
              ColorsManager.accentBlue.withValues(alpha: 0.5),
              ColorsManager.accentBlue.withValues(alpha: 0.1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Transform.translate(
              offset: Offset(-20, -20),
              child: SvgPicture.asset(
                'assets/svgs/left_star.svg',
                fit: BoxFit.cover,
                width: 300.w,
                height: 300.h,
              ),
            ),
            Positioned(
              top: 150.h,
              right: 0,
              child: SvgPicture.asset(
                'assets/svgs/right_star_1.svg',
                fit: BoxFit.cover,
                width: 300.w,
                height: 300.h,
              ),
            ),
            SafeArea(
              bottom: false,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: Column(
                  children: [
                    SizedBox(
                      height: 56.h,
                      child: Row(
                        children: [
                          horizontalSpace(30),
                          Expanded(
                            child: Text(
                              'Upgrade Plan',
                              textAlign: TextAlign.center,
                              style: TextStyles.font22Blackbold,
                            ),
                          ),
                          Container(
                            width: 36.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.black,
                              size: 20.r,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            verticalSpace(10),
                            Image.asset(
                              'assets/images/rocket_boy.png',
                              width: 207.w,
                              height: 207.h,
                            ),
                            verticalSpace(20),
                            Text(
                              'Seamless Anime\nExperience, Ad-Free.',
                              textAlign: TextAlign.center,
                              style: TextStyles.font24blackbold,
                            ),
                            verticalSpace(4),
                            Text(
                              'Enjoy unlimited anime streaming without interruptions.',
                              textAlign: TextAlign.center,
                              style: TextStyles.font14GrayBlueMedium,
                            ),
                            verticalSpace(36),
                            PlansContainer(
                              isSelected: true,
                              imagePath: 'assets/images/shape.png',
                              planText: 'Monthly',
                              priceText: '6.66',
                              descriptionText: 'Include Family Sharing',
                              planType: 'Month',
                            ),
                            verticalSpace(16),
                            PlansContainer(
                              isSelected: false,
                              imagePath: 'assets/images/shape.png',
                              planText: 'Annually',
                              priceText: '66.66',
                              descriptionText: 'Include Family Sharing',
                              planType: 'Year',
                            ),
                            verticalSpace(34),
                            ContinueButton(onPressed: () {}, text: 'Continue'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
