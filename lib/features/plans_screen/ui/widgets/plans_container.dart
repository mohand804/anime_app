import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';

class PlansContainer extends StatelessWidget {
  const PlansContainer({
    super.key,
    required this.isSelected,
    required this.imagePath,
    required this.planText,
    required this.priceText,
    required this.descriptionText,
    required this.planType,
  });

  final bool isSelected;
  final String imagePath;
  final String planText, priceText, descriptionText;
  final String planType;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.r),
      decoration: BoxDecoration(
        color: isSelected ? ColorsManager.darkGunmeta : Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imagePath, width: 108.w, height: 108.h),
              horizontalSpace(22),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    planText,
                    style: TextStyles.font16Whitebold.copyWith(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                  verticalSpace(4),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$$priceText USD ',
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                            fontSize: 14.sp,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '/$planType',
                          style: TextStyle(
                            color: ColorsManager.lightPurple,
                            fontSize: 14.sp,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(4),
                  Text(
                    descriptionText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorsManager.lightPurple,
                      fontSize: 12.sp,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              SizedBox(width: 22.w),
            ],
          ),

          Positioned(
            top: 18.h,
            right: 8.w,
            child: isSelected
                ? Icon(
                    Icons.check_circle,
                    color: ColorsManager.mainBlue,
                    size: 24.r,
                  )
                : Icon(Icons.radio_button_off, color: Colors.black, size: 24.r),
          ),
        ],
      ),
    );
  }
}
