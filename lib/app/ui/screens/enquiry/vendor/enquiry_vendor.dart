import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tieup/app/ui/themes/colors.dart';
import 'package:tieup/app/ui/themes/font_size.dart';
import 'package:tieup/app/ui/widgets/common_text.dart';

class EnquiryForVendor extends StatelessWidget {
  const EnquiryForVendor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
            size: 20,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Center(
              child: CommonText(
                fontSize: AppFontSize.fifteen,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
                text: "Need Help?",
                fontColor: AppColors.primary,
              ),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: "Start creating your\nBusiness with Tieups",
              fontWeight: FontWeight.w500,
              fontSize: AppFontSize.twentyFour,
            ),
            const SizedBox(
              height: 5,
            ),
            CommonText(
              text:
                  "Nibh venenanatis crad sed felis edet velit aliquet Sit amet consectetur adipiscing.",
              fontSize: AppFontSize.twelve,
              fontColor: AppColors.grey,
            ),

            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),

              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.primary, ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_circle_outline_outlined,
                    color: AppColors.primary,
                  ),
                  SizedBox(width: 8),
                  CommonText(
                    text: "Watch Video",
                    fontColor: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: AppFontSize.fourteen,
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                children: [
                  CommonText(
                    textAlign: TextAlign.center,
                    text: "Select Type",
                    fontWeight: FontWeight.w700,
                    fontSize: AppFontSize.twentyFour,
                  ),
                  SizedBox(height: 20),
                  buildProfessionTypeContainer(
                      icon: Icons.laptop_chromebook,
                      title: "Individual Profession",
                      description: "For Doctor, Lawyer, Technician"),
                  buildProfessionTypeContainer(
                      icon: Icons.store_outlined,
                      title: "For Business",
                      description: "Business at some other places"),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

buildProfessionTypeContainer({icon, title, description}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(3),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          spreadRadius: 1,
          blurRadius: 1,
        )
      ],
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(.15),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: AppColors.primary,
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: title,
              fontColor: AppColors.black,
              fontWeight: FontWeight.w500,
              fontSize: AppFontSize.fourteen,
            ),
            CommonText(
              text: description,
              fontColor: AppColors.grey,
              fontWeight: FontWeight.w500,
              fontSize: AppFontSize.fourteen,
            ),
          ],
        ),
        SizedBox(width: 5),
      ],
    ),
  );
}
