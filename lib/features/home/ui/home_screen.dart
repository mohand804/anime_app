import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';
import 'package:week2/features/home/ui/widgets/anmie_list_veiw.dart';
import 'package:week2/features/home/ui/widgets/catgories_list_veiw.dart';
import 'package:week2/features/home/ui/widgets/top_characters_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 500.w,
            height: 550.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ColorsManager.gradient1, Colors.white],
                stops: [0.2, 1.2],

                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 160.w,
            child: Image.asset('assets/images/star.png'),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(29),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Text(
                    'Where Anime Comes Alive',
                    style: TextStyles.font24blackbold,
                  ),
                ),
                verticalSpace(20),
                CatgoriesListVeiw(selectedIndex: selectedCategoryIndex),
                verticalSpace(20),
                AnmieListVeiw(),
                verticalSpace(10),
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Top Characters',
                      style: TextStyles.font24blackbold,
                    ),
                  ),
                ),
                verticalSpace(15),
                TopCharactersListView(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
            SvgPicture.asset(
              'assets/svgs/search.svg',
              width: 24.w,
              height: 24.h,
            ),
            SvgPicture.asset(
              'assets/svgs/Group.svg',
              width: 24.w,
              height: 24.h,
            ),
            SvgPicture.asset(
              'assets/svgs/setting.svg',
              width: 24.w,
              height: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
