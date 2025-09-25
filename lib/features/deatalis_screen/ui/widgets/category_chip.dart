import 'package:flutter/material.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 96,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: ColorsManager.deepAmethyst,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(category, style: TextStyles.font12WhiteMedium)),
    );
  }
}
