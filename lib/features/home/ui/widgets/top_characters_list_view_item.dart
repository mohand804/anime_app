import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/constants/app_constants.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/styles.dart';

class TopCharactersListViewItem extends StatelessWidget {
  final int index;
  const TopCharactersListViewItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 16 : 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 92.w,
            height: 92.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppConstants.topCharacters[index]['photo']!),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          verticalSpace(8),
          Text(
            AppConstants.topCharacters[index]['title']!,
            style: TextStyles.font16blacksemibold,
            textAlign: TextAlign.center,
          ),
          verticalSpace(5),
          Text(
            AppConstants.topCharacters[index]['description']!,
            style: TextStyles.font14Greysemibold,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
