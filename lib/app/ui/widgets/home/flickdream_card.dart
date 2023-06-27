import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class FlickDreamCard extends StatelessWidget {
  const FlickDreamCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 150,
            width: media.width,
            margin:
                const EdgeInsets.only(bottom: 15, left: 25, top: 15, right: 10),
            decoration: BoxDecoration(
                color: AppColors.blue.withAlpha(15),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.grey.withOpacity(.0),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0.3, 0.3))
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/skill.png",
                  height: 90,
                ),
                SizedBox(
                  height: media.height * 0.02,
                )

                // SvgPicture.asset(
                //   "assets/svgs/purchase.svg",
                //   height: 100,
                //   width: 50,
                // ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          right: 10,
          left: 25,
          child: Container(
            height: 30,
            width: 80,
            decoration: const BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const CommonText(
                  text: "Flickdream",
                  fontColor: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: AppFontSize.sixteen,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_circle_right,
                  color: AppColors.white,
                ),
                SizedBox(
                  width: media.width * 0.02,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
