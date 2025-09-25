import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/helpers/spacing.dart';

class DetailsInfo extends StatelessWidget {
  const DetailsInfo({super.key, required this.text, required this.svg});
  final String text;
  final String svg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svg, width: 17),
        horizontalSpace(7),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
