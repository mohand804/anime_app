import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:week2/core/helpers/spacing.dart';
import 'package:week2/core/theming/styles.dart';
import 'package:week2/features/deatalis_screen/ui/widgets/category_chip.dart';
import 'package:week2/features/deatalis_screen/ui/widgets/details_info.dart';

class ImagesAndText extends StatefulWidget {
  const ImagesAndText({super.key});

  @override
  State<ImagesAndText> createState() => _ImagesAndText();
}

class _ImagesAndText extends State<ImagesAndText> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: SizedBox(
                  width: double.infinity,
                  height: 460,
                  child: ClipRRect(
                    child: Image.asset(
                      "assets/images/cover.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 365, left: 100),
                child: Image.asset(
                  "assets/images/demon_slayer.png",
                  width: 180,
                  height: 180,
                ),
              ),
            ],
          ),
          Wrap(
            spacing: 10,
            children: [
              CategoryChip(category: "Dark Fantasy"),
              CategoryChip(category: "Action"),
              CategoryChip(category: "Adventure"),
            ],
          ),
          verticalSpace(20),
          Divider(
            thickness: 2,
            indent: 43,
            endIndent: 43,
            color: Color.fromARGB(122, 116, 114, 114),
          ),
          verticalSpace(7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    DetailsInfo(text: "2.3M views", svg: "assets/svgs/eye.svg"),
                  ],
                ),
                Row(
                  children: [
                    DetailsInfo(
                      text: "2K clap",
                      svg: "assets/svgs/HandsClapping.svg",
                    ),
                  ],
                ),
                Row(
                  children: [
                    DetailsInfo(
                      text: "4 Seasons",
                      svg: "assets/svgs/Seasonss.svg",
                    ),
                  ],
                ),
              ],
            ),
          ),
          verticalSpace(7),
          Divider(
            thickness: 2,
            indent: 43,
            endIndent: 43,
            color: Color.fromARGB(122, 116, 114, 114),
          ),
          verticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset("assets/svgs/fire.svg", width: 29),
                horizontalSpace(10),
                Expanded(
                  child: Text(
                    "Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.",
                    style: TextStyles.font14WhiteMedium,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
