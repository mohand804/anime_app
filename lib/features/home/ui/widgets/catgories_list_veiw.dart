import 'package:flutter/material.dart';
import 'package:week2/core/constants/app_constants.dart';
import 'package:week2/features/home/ui/widgets/catgories_list_veiw_item.dart';

class CatgoriesListVeiw extends StatelessWidget {
  final int selectedIndex;

  const CatgoriesListVeiw({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: AppConstants.categories.length,
        itemBuilder: (context, index) {
          return CatgoriesListVeiwItem(
            itemIndex: index,
            index: index,
            selectedIndex: selectedIndex,
          );
        },
      ),
    );
  }
}
