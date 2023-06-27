import 'package:decorated_icon/decorated_icon.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../controller/slider.dart';
import '../../../../../utility/degings.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/font_size.dart';
import '../../../../widgets/banner.dart';
import '../../../../widgets/common_text.dart';
import '../../../../widgets/main/green_bubble.dart';
import '../../../../widgets/men/sheet1.dart';
import '../../../../widgets/men/sheet2.dart';

class MenProducts extends StatelessWidget {
  const MenProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double dotIndex = 0;

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
                          text: "Shopping/Fashion/Mens",
                          fontSize: AppFontSize.eighteen,
                          // fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.search),
                  SizedBox(
                    width: media.width * 0.04,
                  )
                ],
              ),
            ),

            // running sliders and body
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // running sliders
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

                    // location and dropdown
                    SizedBox(
                      height: 50,
                      width: media.width,
                      child: Row(
                        children: [
                          SizedBox(
                            width: media.width * 0.02,
                          ),

                          //location
                          const DecoratedIcon(
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
                                  const CommonText(
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
                          const Spacer(),

                          //dropdown
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
                                      offset: const Offset(0.2, 0.3))
                                ]),
                            child: Center(
                                child: Row(
                              children: [
                                SizedBox(
                                  width: media.width * 0.02,
                                ),
                                const CommonText(
                                  text: "T-Shirt",
                                ),
                                const Spacer(),
                                const Icon(
                                    Icons.arrow_drop_down_circle_outlined),
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

                    //sheet1 tittle
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: const [
                          CommonText(
                            text: "Sheet 1",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),

                    //sheet1
                    SizedBox(
                      height: media.height * 0.28,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, int index) {
                              return const SheetOneCard();
                            }),
                      ),
                    ),

                    //dots indicator

                    DotsIndicator(
                      dotsCount: 3,
                      position: dotIndex,
                      decorator: DotsDecorator(
                        color: Colors.grey.withAlpha(99),
                        activeColor: AppColors.primary,
                        size: const Size.square(7.0),
                        activeSize: const Size(7.0, 7.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),

                    //sheet2 tittle
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: const [
                          CommonText(
                            text: "Sheet 2",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),

                    //sheet2
                    SizedBox(
                      height: media.height * 0.23,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, int index) {
                              return const SheetTwoCard();
                            }),
                      ),
                    ),

                    // last add
                    Container(
                      width: media.width,
                      height: 150,
                      // margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(.7),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/09/27/160399-flipkar-saleflipkar-twitter.jpg?itok=u0Yll_bl")),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.grey.withOpacity(.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0.2, 0.2))
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
