import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(color: ColorsManager.bottomBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: ColorsManager.mainBlue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/svgs/home.svg',
                  width: 24.w,
                  height: 24.h,
                ),
                horizontalSpace(4),
                Text(
                  'Home',
                  style: TextStyles.font14WhiteSemibold.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/svgs/12.svg', width: 24.w, height: 24.h),
          SvgPicture.asset('assets/svgs/search.svg', width: 24.w, height: 24.h),
          SvgPicture.asset('assets/svgs/Group.svg', width: 24.w, height: 24.h),
          SvgPicture.asset(
            'assets/svgs/setting.svg',
            width: 24.w,
            height: 24.h,
          ),
        ],
      ),
    );
  }
}
