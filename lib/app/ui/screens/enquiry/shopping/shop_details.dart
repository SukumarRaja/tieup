import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tieup/app/controller/shop.dart';
import '../../../../utility/degings.dart';
import '../../../themes/colors.dart';
import '../../../themes/font_size.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_text.dart';
import '../../../widgets/main/green_bubble.dart';
import '../../../widgets/shop/contact.dart';
import '../../../widgets/shop/view_more.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShopController.to.isClickViewMore = false;
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            //background designs
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

            //back and tittle
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        CommonText(
                          text: "Enquiry",
                          fontSize: AppFontSize.sixteen,
                          // fontWeight: FontWeight.w100,
                        ),
                        CommonText(
                          text: "Shopping/Fashion/Mens/T-Shirt",
                          fontSize: AppFontSize.eighteen,
                          // fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.notifications_none),
                  SizedBox(
                    width: media.width * 0.04,
                  )
                ],
              ),
            ),

            // running sliders and body
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SingleChildScrollView(
                  child: Obx(
                () => ShopController.to.isClickViewMore == true
                    ? Column(
                        children: [
                          const ShopViewMoreCard(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: media.height * 0.04,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ContactCard(
                                    icon: Icons.call,
                                    onPressed: () {},
                                  ),
                                  ContactCard(
                                    icon: Icons.directions,
                                    onPressed: () {},
                                  ),
                                  ContactCard(
                                    icon: Icons.chat,
                                    onPressed: () {},
                                  ),
                                  ContactCard(
                                    icon: Icons.share,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: media.height * 0.03,
                              ),
                              // last add
                             Container(
                                      width: media.width,
                                      height: 150,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color:
                                              AppColors.white.withOpacity(.7),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/09/27/160399-flipkar-saleflipkar-twitter.jpg?itok=u0Yll_bl")),
                                          boxShadow: [
                                            BoxShadow(
                                                color: AppColors.grey
                                                    .withOpacity(.3),
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: const Offset(0.2, 0.2))
                                          ]),
                                    ),
                            ],
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //view more
                          Container(
                              width: media.width,
                              margin: const EdgeInsets.only(
                                  right: 10, left: 10, top: 20),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                fontColor: AppColors.black
                                                    .withOpacity(.5),
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
                                                bottom: 5.0,
                                                left: 10.0,
                                                right: 10.0),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                color: AppColors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: AppColors.black
                                                          .withOpacity(.1),
                                                      spreadRadius: 1,
                                                      blurRadius: 1,
                                                      offset: const Offset(
                                                          0.2, 0.3))
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
                                                  color: AppColors.grey
                                                      .withOpacity(.4),
                                                ),
                                                const CommonText(
                                                  text: "10:30Am - 08:00PM",
                                                ),
                                                const Icon(Icons
                                                    .arrow_drop_down_outlined),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: media.width * 0.02,
                                          ),
                                          CommonText(
                                            text: "1.8 km, away",
                                            fontSize: AppFontSize.fourteen,
                                            fontColor:
                                                AppColors.black.withOpacity(.5),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            right: 8.0, left: 8.0),
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
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: AppColors.grey
                                                          .withOpacity(.3),
                                                      spreadRadius: 1,
                                                      blurRadius: 1,
                                                      offset: const Offset(
                                                          0.2, 0.2))
                                                ]),
                                            child: Column(
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0,
                                                          bottom: 8.0,
                                                          right: 15,
                                                          left: 15.0),
                                                  decoration: BoxDecoration(
                                                      color: AppColors.green,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: AppColors
                                                                .grey
                                                                .withOpacity(
                                                                    .3),
                                                            spreadRadius: 1,
                                                            blurRadius: 1,
                                                            offset:
                                                                const Offset(
                                                                    0.2, 0.2))
                                                      ]),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: const [
                                                      CommonText(
                                                        text: "4.6",
                                                        fontColor:
                                                            AppColors.white,
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
                                                      const EdgeInsets.only(
                                                          right: 8.0,
                                                          left: 8.0),
                                                  child: Column(
                                                    children: [
                                                      CommonText(
                                                        text: "10k",
                                                        fontColor:
                                                            AppColors.black,
                                                      ),
                                                      CommonText(
                                                        text: "reviews",
                                                        fontColor: AppColors
                                                            .black
                                                            .withOpacity(.4),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
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
                                                    text:
                                                        "2nd street, DB Road, RS Puram",
                                                    fontColor: AppColors.black,
                                                  ),
                                                ],
                                              ),
                                              CommonText(
                                                  text:
                                                      "Coimbatore, Tamil Nadu 600421")
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                            right: 8.0, left: 8.0),
                                        child: Divider(
                                          thickness: 2,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: CommonText(
                                          text: "Photos",
                                          fontSize: AppFontSize.eighteen,
                                          fontColor: AppColors.gradient,
                                        ),
                                      ),
                                      SizedBox(
                                        height: media.height * 0.14,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0, left: 8.0),
                                          child: ListView.builder(
                                              shrinkWrap: true,
                                              itemCount: 5,
                                              scrollDirection: Axis.horizontal,
                                              itemBuilder:
                                                  (context, int index) {
                                                return Container(
                                                  width: 105,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: AppColors
                                                                .grey
                                                                .withOpacity(
                                                                    .3),
                                                            spreadRadius: 1,
                                                            blurRadius: 1,
                                                            offset:
                                                                const Offset(
                                                                    0.2, 0.2))
                                                      ],
                                                      image: DecorationImage(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          fit: BoxFit.cover,
                                                          image: NetworkImage(
                                                              "https://pngimg.com/d/tshirt_PNG5448.png"))),
                                                );
                                              }),
                                        ),
                                      ),
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
                              )),

                          GestureDetector(
                            onTap: () {
                              ShopController.to.isClickViewMore = true;
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width - 40,
                              margin: const EdgeInsets.all(15.0),
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: AppColors.primary,
                                gradient: const LinearGradient(
                                    colors: [
                                      AppColors.primary,
                                      AppColors.gradient
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.topLeft),
                              ),
                              child: Center(
                                child: CommonText(
                                  text: "Enquiry Now",
                                  fontColor: AppColors.white,
                                  fontSize: AppFontSize.twenty,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: media.height * 0.02,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: CommonText(
                                  text: "Rating & Reviews",
                                  fontColor: AppColors.gradient,
                                  fontSize: AppFontSize.eighteen,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: media.width,
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(10),
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
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 4,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: media.width * 0.01,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                CommonText(text: "Excellent"),
                                                CommonText(text: "Very Good"),
                                                CommonText(text: "Good"),
                                                CommonText(text: "Average"),
                                                CommonText(text: "Poor"),
                                              ],
                                            ),
                                            SizedBox(
                                              width: media.width * 0.02,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 8,
                                                      width: media.width / 2.7,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.black
                                                            .withOpacity(.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 8,
                                                      width: media.width * 0.15,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: media.height * 0.01,
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 8,
                                                      width: media.width / 2.7,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.black
                                                            .withOpacity(.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 8,
                                                      width: media.width * 0.15,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: media.height * 0.01,
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 8,
                                                      width: media.width / 2.7,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.black
                                                            .withOpacity(.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 8,
                                                      width: media.width * 0.15,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: media.height * 0.01,
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 8,
                                                      width: media.width / 2.7,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.black
                                                            .withOpacity(.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 8,
                                                      width: media.width * 0.15,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: media.height * 0.01,
                                                ),
                                                Stack(
                                                  children: [
                                                    Container(
                                                      height: 8,
                                                      width: media.width / 2.7,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.black
                                                            .withOpacity(.1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 8,
                                                      width: media.width * 0.15,
                                                      // margin: EdgeInsets.all(5),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: media.width * 0.02,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: const [
                                                CommonText(text: "8265"),
                                                CommonText(text: "2364"),
                                                CommonText(text: "2565"),
                                                CommonText(text: "454"),
                                                CommonText(text: "2165"),
                                              ],
                                            ),
                                          ],
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            const CommonText(
                                              text: "4.3",
                                              fontColor: AppColors.green,
                                              fontSize: AppFontSize.twenty,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.green,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.green,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.green,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.green,
                                                  size: 10,
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: AppColors.green,
                                                  size: 10,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: media.height * 0.009,
                                            ),
                                            CommonText(
                                              text: "19,352 ratings",
                                              fontColor: AppColors.black
                                                  .withOpacity(.5),
                                              fontSize: AppFontSize.twelve,
                                            ),
                                            CommonText(
                                              text: "1,352 reviews",
                                              fontColor: AppColors.black
                                                  .withOpacity(.5),
                                              fontSize: AppFontSize.twelve,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: media.height * 0.01,
                              ),
                              const Center(
                                child: CommonText(
                                  text: "Your Rating",
                                  fontColor: AppColors.gradient,
                                  fontSize: AppFontSize.eighteen,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.grey.withOpacity(.5),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColors.grey.withOpacity(.5),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColors.grey.withOpacity(.5),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColors.grey.withOpacity(.5),
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppColors.grey.withOpacity(.5),
                                    size: 30,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: media.height * 0.01,
                              ),
                              Center(
                                child: Container(
                                  height: 40,
                                  alignment: Alignment.center,
                                  width: media.width / 3,
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
                                      ]),
                                  child: const CommonText(
                                    text: "WRITE A REVIEW",
                                    fontSize: AppFontSize.fourteen,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: media.height * 0.03,
                              ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceEvenly,
                              //   children: [
                              //     ContactCard(
                              //       icon: Icons.call,
                              //       onPressed: () {},
                              //     ),
                              //     ContactCard(
                              //       icon: Icons.directions,
                              //       onPressed: () {},
                              //     ),
                              //     ContactCard(
                              //       icon: Icons.chat,
                              //       onPressed: () {},
                              //     ),
                              //     ContactCard(
                              //       icon: Icons.share,
                              //       onPressed: () {},
                              //     ),
                              //   ],
                              // ),
                              // SizedBox(
                              //   height: media.height * 0.03,
                              // ),
                            ],
                          ),
                        ],
                      ),
              )),
            ),
            // Obx(() => ShopController.to.isClickViewMore == true
            //     ? Positioned(
            //         bottom: 0,
            //         child: Container(
            //           width: media.width,
            //           height: 150,
            //           // margin: EdgeInsets.all(15),
            //           decoration: BoxDecoration(
            //               color: AppColors.white.withOpacity(.7),
            //               borderRadius: const BorderRadius.only(
            //                   topRight: Radius.circular(8.0),
            //                   topLeft: Radius.circular(8.0)),
            //               image: const DecorationImage(
            //                   fit: BoxFit.cover,
            //                   image: NetworkImage(
            //                       "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/09/27/160399-flipkar-saleflipkar-twitter.jpg?itok=u0Yll_bl")),
            //               boxShadow: [
            //                 BoxShadow(
            //                     color: AppColors.grey.withOpacity(.3),
            //                     spreadRadius: 1,
            //                     blurRadius: 1,
            //                     offset: const Offset(0.2, 0.2))
            //               ]),
            //         ),
            //       )
            //     : SizedBox())
          ],
        ),
      ),
    );
  }
}
