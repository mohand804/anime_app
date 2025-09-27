import 'package:flutter/material.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/colors_manger.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      elevation: 0,
      enableDrag: false,
      onClosing: () {},
      builder: (context) {
        return Container(
          color: const Color(0xff16103C),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              _buildButton(context, 'assets/svgs/player.svg', 'preview', false),
              horizontalSpace(16),
              _buildButton(context, 'assets/svgs/eye.svg', 'Watch Now'),
            ],
          ),
        );
      },
    );
  }

  _buildButton(
    BuildContext context,
    String iconPath,
    String text, [
    bool isPrimary = true,
  ]) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // AppTransitions.slideFromBottom(context, const AnimeDetailsScreen());
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
            color: isPrimary
                ? ColorsManager.mainBlue
                : const Color(0xff899866).withValues(alpha: 0.40),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(iconPath),
              horizontalSpace(7),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
