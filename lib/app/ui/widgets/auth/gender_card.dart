import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth.dart';
import '../../themes/colors.dart';
import '../common_text.dart';

class GenderCard extends StatelessWidget {
  const GenderCard(
      {Key? key,
      required this.gender,
      required this.onPressed,
      required this.index})
      : super(key: key);
  final String gender;
  final Function() onPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 100,
        margin: const EdgeInsets.only(right: 5, left: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: AppColors.white,
            border: Border.all(color: AppColors.grey)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: media.width * 0.02,
            ),
            Obx(
              () => Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AuthController.to.selectGenderIndex == index
                        ? AppColors.primary
                        : null,
                    border: AuthController.to.selectGenderIndex == index
                        ? null
                        : Border.all(color: AppColors.black.withOpacity(.6))),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: AppColors.white,
                    size: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: media.width * 0.02,
            ),
            CommonText(
              text: gender,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
