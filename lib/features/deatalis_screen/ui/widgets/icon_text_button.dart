import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.icon,
    required this.text,
    this.color,
    this.iconWidth = 0,
  });
  final double iconWidth;
  final String icon;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Container(
        width: 157,
        height: 45,
        decoration: BoxDecoration(
          color: color ?? ColorsManager.lavenderIndigo,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: iconWidth,
              colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
            horizontalSpace(4),
            Text(text, style: TextStyles.font14WhiteBold),
          ],
        ),
      ),
    );
  }
}
