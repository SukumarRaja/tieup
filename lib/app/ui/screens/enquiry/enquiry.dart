import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/config.dart';
import '../../../controller/slider.dart';
import '../../../utility/degings.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../../widgets/banner.dart';
import '../../widgets/common_text.dart';
import '../../widgets/home/location_text.dart';
import '../../widgets/main/green_bubble.dart';
import 'shopping/shopping.dart';

class Enquiry extends StatelessWidget {
  const Enquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -160,
              left: -30,
              child: topWidget(media.width),
            ),
            Positioned(
              bottom: -180,
              left: -40,
              child: bottomWidget(media.width),
            ),
            GreenBubble(size: media),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: media.width * 0.01),
                    child: const CommonText(
                      text: "Enquiry",
                      fontSize: AppFontSize.twentyFour,
                      // fontWeight: FontWeight.w100,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search),
                  SizedBox(
                    width: media.width * 0.04,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Obx(
                () => SliderController.to.loadingSliders == true
                    ? const Text("Loading")
                    : Obx(() => CommonSlider(
                          // imageSliders: SliderController.to.imageSlider,
                          dbImage: SliderController.to.dbImage,
                          imageSliders: const [
                            "https://codecanyon.img.customer.envatousercontent.com/files/416365027/Preview590x300.png?auto=compress%2Cformat&fit=crop&crop=top&w=590&h=300&s=5964870d4d6cefefb5d3f913cf7827ec",
                            "https://www.bharattaxi.com/blog/wp-content/uploads/2020/04/modern-sale-banner-website-slider-template-design_54925-44.jpg",
                            "https://img.freepik.com/premium-vector/modern-sale-banner-website-slider-template-design_54925-46.jpg",
                          ],
                        )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 215.0),
              child: LocationText(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //shopping
                    Container(
                      width: media.width,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.grey.withOpacity(.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0.2, 0.2))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: CommonText(
                              text: "Shopping",
                              fontSize: AppFontSize.eighteen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: media.height * 0.01,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            itemCount: 8,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1, crossAxisCount: 4),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(() => Shopping());
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(5.0),
                                      padding: EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        color:
                                            AppColors.primary.withOpacity(.1),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: AppColors.white
                                                  .withOpacity(.1),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(0.3, 0.3))
                                        ],
                                      ),
                                      child: Icon(
                                        Icons.local_offer,
                                        color: AppColors.primary,
                                      ),
                                    ),
                                  ),
                                  CommonText(text: "Fashion")
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    //food and beverages
                    Container(
                      width: media.width,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.grey.withOpacity(.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0.2, 0.2))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: CommonText(
                              text: "Food & Beverages",
                              fontSize: AppFontSize.eighteen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: media.height * 0.01,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            itemCount: 8,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1, crossAxisCount: 4),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.primary.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                AppColors.white.withOpacity(.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0.3, 0.3))
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.emoji_food_beverage_sharp,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  CommonText(text: "Food")
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    //tours and travel
                    Container(
                      width: media.width,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.grey.withOpacity(.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0.2, 0.2))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 8.0),
                            child: CommonText(
                              text: "Tours & Travel",
                              fontSize: AppFontSize.eighteen,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: media.height * 0.01,
                          ),
                          GridView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1, crossAxisCount: 4),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5.0),
                                    padding: EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      color: AppColors.primary.withOpacity(.1),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                AppColors.white.withOpacity(.1),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: Offset(0.3, 0.3))
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.drive_eta,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  CommonText(text: "Family")
                                ],
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: media.width,
        height: 120,
        // margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: AppColors.white.withOpacity(.7),
            // borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/09/27/160399-flipkar-saleflipkar-twitter.jpg?itok=u0Yll_bl")),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey.withOpacity(.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0.2, 0.2))
            ]),
      ),
    );
  }
}
