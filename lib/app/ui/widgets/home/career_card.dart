import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class CareerCard extends StatelessWidget {
  const CareerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: AppColors.grey.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 3))
          ]),
      width: media.width,
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CommonText(
                      text: "Carer",
                      fontColor: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: AppFontSize.twentyFour,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CommonText(
                      text: "Lot of opportunity for you!",
                      fontColor: AppColors.grey,
                      fontSize: AppFontSize.fourteen,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: AppColors.primary,
                        gradient: const LinearGradient(
                            colors: [AppColors.primary, AppColors.gradient],
                            begin: Alignment.topRight,
                            end: Alignment.topLeft),
                      ),
                      child: const Center(
                        child: CommonText(
                          text: "Find Jobs",
                          fontColor: AppColors.white,
                          fontSize: AppFontSize.twenty,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/shop.png",
              height: 160,
            ),
          ),
        ],
      ),
    );
  }
}
