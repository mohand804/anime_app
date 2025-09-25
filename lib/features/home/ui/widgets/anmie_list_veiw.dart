import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/constants/app_constants.dart';
import 'package:week2/features/home/ui/widgets/anmie_list_veiw_item.dart';

class AnmieListVeiw extends StatelessWidget {
  const AnmieListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.w),
      child: SizedBox(
        height: 310.h,
        child: ListView.builder(
          itemCount: AppConstants.posterAnime.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return AnmieListVeiwItem(index: index);
          },
        ),
      ),
    );
  }
}
