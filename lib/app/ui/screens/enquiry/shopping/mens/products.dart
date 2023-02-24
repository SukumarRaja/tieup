import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../controller/slider.dart';
import '../../../../../utility/degings.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/font_size.dart';
import '../../../../widgets/banner.dart';
import '../../../../widgets/common_text.dart';
import '../../../../widgets/main/green_bubble.dart';

class MenProducts extends StatelessWidget {
  const MenProducts({Key? key}) : super(key: key);

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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CommonText(
                          text: "Enquiry",
                          fontSize: AppFontSize.sixteen,
                          // fontWeight: FontWeight.w100,
                        ),
                        const CommonText(
                          text: "Shopping/Fashion/Mens",
                          fontSize: AppFontSize.eighteen,
                          // fontWeight: FontWeight.w100,
                        ),
                      ],
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Obx(
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
                    Container(
                      height: 50,
                      width: media.width,
                      // margin: EdgeInsets.only(right: 8.0, left: 8.0),
                      decoration: const BoxDecoration(
                          // color: AppColors.secondary,
                          ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: media.width * 0.02,
                          ),
                          // CommonText(
                          //   text: "All Features",
                          //   fontSize: AppFontSize.sixteen,
                          //   fontWeight: FontWeight.w600,
                          // ),
                          // Spacer(),
                          DecoratedIcon(
                            Icons.location_on,
                            color: AppColors.primary,
                            size: 35,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  CommonText(
                                    text: "Coimbatore",
                                    fontWeight: FontWeight.w500,
                                    fontSize: AppFontSize.fifteen,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 18,
                                    color: AppColors.black.withOpacity(.4),
                                  )
                                ],
                              ),
                              CommonText(
                                text: "2nd street, DB Road, RS Puram...",
                                fontColor: AppColors.black.withOpacity(.4),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.black.withOpacity(.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0.2, 0.3))
                                ]),
                            child: Center(
                                child: Row(
                              children: [
                                SizedBox(
                                  width: media.width * 0.02,
                                ),
                                CommonText(
                                  text: "T-Shirt",
                                ),
                                Spacer(),
                                Icon(Icons.arrow_drop_down_circle_outlined),
                                SizedBox(
                                  width: media.width * 0.02,
                                ),
                              ],
                            )),
                          ),
                          SizedBox(
                            width: media.width * 0.02,
                          )
                        ],
                      ),
                    ),

                    //sheet

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: [
                          CommonText(
                            text: "Sheet 1",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),

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
                                      margin: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
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
                                        CommonText(
                                          text: "Fashion Trends",
                                          fontWeight: FontWeight.w500,
                                          fontSize: AppFontSize.sixteen,
                                          fontColor: AppColors.black,
                                        ),
                                        SizedBox(
                                          height: media.height * 0.004,
                                        ),
                                        CommonText(
                                          text: "Retail Shopping",
                                          fontSize: AppFontSize.fourteen,
                                          fontColor:
                                              AppColors.black.withOpacity(.5),
                                        ),
                                        SizedBox(
                                          height: media.height * 0.004,
                                        ),
                                        CommonText(
                                          text: "Anna Nagar, Chennai",
                                          fontSize: AppFontSize.fourteen,
                                          fontColor:
                                              AppColors.black.withOpacity(.5),
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
                                      margin: EdgeInsets.all(10.0),
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
                                                offset: Offset(0.2, 0.3))
                                          ]),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: media.width * 0.02,
                                          ),
                                          CommonText(
                                            text: "Open now",
                                            fontColor: AppColors.primary,
                                          ),
                                          SizedBox(
                                            width: media.width * 0.01,
                                          ),
                                          Container(
                                            height: 15,
                                            width: 2,
                                            color:
                                                AppColors.grey.withOpacity(.4),
                                          ),
                                          SizedBox(
                                            width: media.width * 0.01,
                                          ),
                                          CommonText(
                                            text: "10:30Am - 08:00PM",
                                          ),
                                          SizedBox(
                                            width: media.width * 0.01,
                                          ),
                                          Icon(Icons.arrow_drop_down_outlined),
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
                                      fontColor:
                                          AppColors.black.withOpacity(.5),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 8.0, left: 8.0),
                                  child: Divider(
                                    thickness: 2,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8.0),
                                      margin: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                          color: AppColors.green,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: AppColors.grey
                                                    .withOpacity(.3),
                                                spreadRadius: 1,
                                                blurRadius: 1,
                                                offset: Offset(0.2, 0.2))
                                          ]),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
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
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(
                                          bottom: 8.0,
                                          top: 8.0,
                                          right: 20.0,
                                          left: 20.0),
                                      margin: EdgeInsets.all(8.0),
                                      decoration: BoxDecoration(
                                        color: AppColors.green,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: AppColors.grey
                                                  .withOpacity(.3),
                                              spreadRadius: 1,
                                              blurRadius: 1,
                                              offset: Offset(0.2, 0.2))
                                        ],
                                        gradient: const LinearGradient(
                                            colors: [
                                              AppColors.primary,
                                              AppColors.gradient
                                            ],
                                            begin: Alignment.topRight,
                                            end: Alignment.topLeft),
                                      ),
                                      child: CommonText(
                                        text: "Get Info",
                                        fontColor: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Positioned(
                                right: 10,
                                top: 10,
                                child: Icon(
                                  Icons.favorite_border_sharp,
                                  color: AppColors.gradient,
                                ))
                          ],
                        )),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: [
                          CommonText(
                            text: "Sheet 2",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A"))),
                              ),
                              CommonText(
                                text: "The Covai\nMens Wear",
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: AppFontSize.eighteen,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, right: 8, left: 8,top: 2),
                                child: CommonText(
                                  text: "Retail Shopping",
                                  textAlign: TextAlign.center,
                                  fontColor: AppColors.black.withOpacity(.5),
                                  fontSize: AppFontSize.fourteen,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A"))),
                              ),
                              CommonText(
                                text: "The Covai\nMens Wear",
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: AppFontSize.eighteen,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, right: 8, left: 8,top: 2),
                                child: CommonText(
                                  text: "Retail Shopping",
                                  textAlign: TextAlign.center,
                                  fontColor: AppColors.black.withOpacity(.5),
                                  fontSize: AppFontSize.fourteen,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppColors.white,
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.white,
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A"))),
                              ),
                              CommonText(
                                text: "The Covai\nMens Wear",
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                fontSize: AppFontSize.eighteen,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 8.0, right: 8, left: 8,top: 2),
                                child: CommonText(
                                  text: "Retail Shopping",
                                  textAlign: TextAlign.center,
                                  fontColor: AppColors.black.withOpacity(.5),
                                  fontSize: AppFontSize.fourteen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    // last add
                    Container(
                      width: media.width,
                      height: 150,
                      // margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(.7),
                          borderRadius: BorderRadius.circular(8.0),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
