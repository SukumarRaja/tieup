import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/shop.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class ShopViewMoreCard extends StatelessWidget {
  const ShopViewMoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Container(
        width: media.width,
        margin: const EdgeInsets.only(right: 10, left: 10, top: 20),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey.withOpacity(.3),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0.2, 0.2))
            ]),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.white,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A"))),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CommonText(
                          text: "Fashion Trends",
                          fontWeight: FontWeight.w500,
                          fontSize: AppFontSize.sixteen,
                          fontColor: AppColors.black,
                        ),
                        SizedBox(
                          height: media.height * 0.006,
                        ),
                        CommonText(
                          text: "Retail Shopping",
                          fontSize: AppFontSize.fourteen,
                          fontColor: AppColors.black.withOpacity(.5),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 35,
                      // width: 250,
                      margin: const EdgeInsets.only(
                          bottom: 5.0, left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withOpacity(.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0.2, 0.3))
                          ]),
                      child: Row(
                        children: [
                          SizedBox(
                            width: media.width * 0.02,
                          ),
                          const CommonText(
                            text: "Open now",
                            fontColor: AppColors.primary,
                          ),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          Container(
                            height: 15,
                            width: 2,
                            color: AppColors.grey.withOpacity(.4),
                          ),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          const CommonText(
                            text: "10:30Am - 08:00PM",
                          ),
                          SizedBox(
                            width: media.width * 0.01,
                          ),
                          const Icon(Icons.arrow_drop_down_outlined),
                          SizedBox(
                            width: media.width * 0.02,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.02,
                    ),
                    CommonText(
                      text: "1.8 km, away",
                      fontSize: AppFontSize.fourteen,
                      fontColor: AppColors.black.withOpacity(.5),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 8.0, left: 8.0),
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: AppColors.white,
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
                          Container(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, right: 15, left: 15.0),
                            decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0)),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.grey.withOpacity(.3),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: const Offset(0.2, 0.2))
                                ]),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                CommonText(
                                  text: "4.6",
                                  fontColor: AppColors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: AppColors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: media.height * 0.006,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 8.0, left: 8.0),
                            child: Column(
                              children: [
                                CommonText(
                                  text: "10k",
                                  fontColor: AppColors.black,
                                ),
                                CommonText(
                                  text: "reviews",
                                  fontColor: AppColors.black.withOpacity(.4),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: AppColors.primary,
                              size: 18,
                            ),
                            SizedBox(
                              width: media.width * 0.003,
                            ),
                            CommonText(
                              text: "2nd street, DB Road, RS Puram",
                              fontColor: AppColors.black,
                            ),
                          ],
                        ),
                        CommonText(text: "Coimbatore, Tamil Nadu 600421")
                      ],
                    ),
                  ],
                ),
                Obx(() => ShopController.to.isClickViewMore == true
                    ? const SizedBox()
                    : GestureDetector(
                        onTap: () {
                          ShopController.to.isClickViewMore = true;
                        },
                        child: Container(
                          height: 40,
                          width: media.width,
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: AppColors.green,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.grey.withOpacity(.3),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(0.2, 0.2))
                            ],
                            gradient: const LinearGradient(
                                colors: [AppColors.primary, AppColors.gradient],
                                begin: Alignment.topRight,
                                end: Alignment.topLeft),
                          ),
                          child: Center(
                            child: const CommonText(
                              text: "View more information",
                              fontColor: AppColors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                Obx(() => ShopController.to.isClickViewMore == true
                    ? const Padding(
                        padding: EdgeInsets.only(right: 8.0, left: 8.0),
                        child: Divider(
                          thickness: 2,
                        ),
                      )
                    : const SizedBox()),
                Obx(() => ShopController.to.isClickViewMore == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: CommonText(
                          text: "Photos",
                          fontSize: AppFontSize.eighteen,
                          fontColor: AppColors.gradient,
                        ),
                      )
                    : SizedBox()),
                Obx(() => ShopController.to.isClickViewMore == true
                    ? SizedBox(
                        height: media.height * 0.14,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, left: 8.0),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int index) {
                                return Container(
                                  width: 105,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(8.0),
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                AppColors.grey.withOpacity(.3),
                                            spreadRadius: 1,
                                            blurRadius: 1,
                                            offset: const Offset(0.2, 0.2))
                                      ],
                                      image: DecorationImage(
                                          alignment: Alignment.topCenter,
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              "https://pngimg.com/d/tshirt_PNG5448.png"))),
                                );
                              }),
                        ),
                      )
                    : SizedBox()),
              ],
            ),
            const Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.favorite_border_sharp,
                  color: AppColors.gradient,
                ))
          ],
        ));
  }
}
