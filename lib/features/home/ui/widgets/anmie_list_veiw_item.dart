import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/constants/app_constants.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/routing/routes.dart';
import 'package:week2/core/theming/styles.dart';

class AnmieListVeiwItem extends StatelessWidget {
  final int index;
  const AnmieListVeiwItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(Routes.detailsScreen);
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 190.w,
                height: 260.h,
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(
                      AppConstants.posterAnime[index]['photo']!,
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Positioned(
              top: 14.h,
              left: 132.w,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/svgs/star.svg'),
                    horizontalSpace(4),
                    Text('5.0', style: TextStyles.font12blackSemibold),
                  ],
                ),
              ),
            ),
          ],
        ),
        verticalSpace(6),
        Text(
          ' ${AppConstants.posterAnime[index]['title']!}',
          style: TextStyles.font14Blackbold,
        ),
        Text(
          AppConstants.posterAnime[index]['description']!,
          style: TextStyles.font12Graymedium,
        ),
      ],
    );
  }
}
