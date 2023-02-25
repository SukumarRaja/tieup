import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Expanded(
        flex: 2,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 150,
                width: media.width,
                margin: const EdgeInsets.only(
                    bottom: 15, left: 5, top: 15, right: 25),
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
              right: 25,
              left: 5,
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
                      text: "Skilled",
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
        ));
  }
}
