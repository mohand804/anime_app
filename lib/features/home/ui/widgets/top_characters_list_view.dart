import 'package:flutter/material.dart';
import 'package:week2/core/constants/app_constants.dart';
import 'package:week2/features/home/ui/widgets/top_characters_list_view_item.dart';

class TopCharactersListView extends StatelessWidget {
  const TopCharactersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: AppConstants.topCharacters.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TopCharactersListViewItem(index: index);
        },
      ),
    );
  }
}
