import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week2/core/theming/colors_manger.dart';
import 'package:week2/core/theming/styles.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        decoration: ShapeDecoration(
          color: ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(37),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyles.font16Whitebold,
        ),
      ),
    );
  }
}
