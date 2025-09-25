import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/constants/app_constants.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';

class CatgoriesListVeiwItem extends StatelessWidget {
  final int itemIndex;
  final int index;
  final int selectedIndex;

  const CatgoriesListVeiwItem({
    super.key,
    required this.itemIndex,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 16.w : 6.w),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
        decoration: BoxDecoration(
          color: index == selectedIndex ? ColorsManager.mainBlue : Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Text(
          AppConstants.categories[index],
          style: index == selectedIndex
              ? TextStyles.font16Whitebold
              : TextStyles.font16bluebold,
        ),
      ),
    );
  }
}
