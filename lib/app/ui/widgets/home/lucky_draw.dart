import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class LuckyDrawCard extends StatelessWidget {
  const LuckyDrawCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: AppColors.white.withOpacity(.7),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: AppColors.grey.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0.2, 0.2))
          ]),
      child: Column(
        children: [
          SizedBox(
            height: media.height * 0.01,
          ),
          const CommonText(
            text: "Luckydraw Starts In",
            fontColor: AppColors.black,
            fontSize: AppFontSize.twenty,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: media.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.white.withOpacity(.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0.3, 0.3))
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonText(
                      text: "50\nDays",
                      textAlign: TextAlign.center,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.white.withOpacity(.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0.3, 0.3))
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonText(
                      text: "5\nHours",
                      textAlign: TextAlign.center,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.white.withOpacity(.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0.3, 0.3))
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonText(
                      text: "30\nMinutes",
                      textAlign: TextAlign.center,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                width: 60,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.white.withOpacity(.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0.3, 0.3))
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommonText(
                      text: "20\nSeconds",
                      textAlign: TextAlign.center,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w400,
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 40,
            width: media.width / 2,
            margin: const EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(color: AppColors.black.withOpacity(.5)),
            ),
            child: const Center(
                child: CommonText(
              text: "#FR265029FEB26512",
              fontColor: AppColors.grey,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            )),
          )
        ],
      ),
    );
  }
}
