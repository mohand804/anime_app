import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:week2/core/helpers/spacing.dart';

class VideoInfoSection extends StatelessWidget {
  const VideoInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xff2C1E51)),
      child: Stack(
        alignment: Alignment.center,
        children: [_topOval(), _bottomOval(), _blurEffect(), _content()],
      ),
    );
  }

  Padding _content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          horizontalSpace(60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              _opacityButton('Dark Fantasy'),
              _opacityButton('Action'),
              _opacityButton('Adventure'),
            ],
          ),
          horizontalSpace(20),
          _buildDivider(),
          horizontalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconText('assets/images/eye.png', '2.3M', 'Views'),
              _buildIconText('assets/images/hand.png', '2K', 'Clap'),
              _buildIconText('assets/images/movie.png', '4', 'Seasons'),
            ],
          ),
          horizontalSpace(10),
          _buildDivider(),
          horizontalSpace(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/fire.png'),
              horizontalSpace(7),
              const Expanded(
                child: Text(
                  'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          horizontalSpace(8),
        ],
      ),
    );
  }

  SizedBox _blurEffect() {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 21, sigmaY: 21),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xff2C1E51).withValues(alpha: 0.45),
          ),
        ),
      ),
    );
  }

  Positioned _bottomOval() {
    return Positioned(
      bottom: 30,
      left: -17,
      child: Image.asset('assets/images/bottom_oval.png'),
    );
  }

  Positioned _topOval() {
    return Positioned(
      top: -23,
      right: -17,
      child: Image.asset('assets/images/top_oval.png'),
    );
  }

  _opacityButton(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: const Color(0xffD9D9D9).withValues(alpha: 0.24),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  _buildDivider() {
    return Divider(
      color: const Color(0xff747272).withValues(alpha: 0.42),
      thickness: 1,
    );
  }

  _buildIconText(String iconPath, String value, String type) {
    return Row(
      children: [
        Image.asset(iconPath),
        horizontalSpace(7),
        Text.rich(
          TextSpan(
            text: value,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: ' $type',
                style: const TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
