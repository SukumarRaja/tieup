import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class PrizeCard extends StatelessWidget {
  const PrizeCard(
      {Key? key,
      required this.prizeImage,
      required this.prizeName,
      required this.productName,
      required this.prizeQty})
      : super(key: key);
  final String prizeImage;
  final String prizeName;
  final String productName;
  final String prizeQty;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: media.width,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.black.withOpacity(.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0.3, 0.3))
                ],
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(prizeImage))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: CommonText(
                  text: prizeName,
                  fontColor: AppColors.black,
                  fontSize: AppFontSize.twenty,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: productName,
                      fontColor: AppColors.black,
                      fontSize: AppFontSize.fifteen,
                      fontWeight: FontWeight.w500,
                    ),
                    CommonText(
                      text: prizeQty,
                      fontColor: AppColors.black.withOpacity(.5),
                      fontSize: AppFontSize.fourteen,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: media.height * 0.01,
          )
        ],
      ),
    );
  }
}
