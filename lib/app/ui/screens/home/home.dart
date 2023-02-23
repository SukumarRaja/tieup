import 'dart:math';

import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';
import 'package:tieup/app/ui/themes/font_size.dart';
import 'package:tieup/app/ui/widgets/common_text.dart';
import '../../../config/config.dart';
import '../../../controller/slider.dart';
import '../../themes/colors.dart';
import 'dart:math' as math;
import '../../widgets/banner.dart';
import '../../widgets/main/green_bubble.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  Widget topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenWidth,
        height: 1.2 * screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: const LinearGradient(
            begin: Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [
              Color(0x007CBFCF),
              Color(0xB316BFC4),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomWidget(double screenWidth) {
    return Container(
      width: 1.5 * screenWidth,
      height: 1.5 * screenWidth,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment(0.6, -1.1),
          end: Alignment(0.7, 0.8),
          colors: [
            AppColors.primary.withOpacity(.2),
            AppColors.primary.withOpacity(.2),
            // Color(0xDB4BE8CC),
            // Color(0x005CDBCF),
          ],
        ),
      ),
    );
  }

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
                  Container(
                    height: 50,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://t4.ftcdn.net/jpg/02/66/71/71/360_F_266717164_J8Fqw4OcXRkKtNwFyHD02zIEsxPI7qHH.jpg"))),
                  ),
                  const Spacer(),
                  const DecoratedIcon(
                    Icons.notifications_none,
                    color: AppColors.primary,
                    size: 35,
                    shadows: [
                      BoxShadow(
                          blurRadius: 2.0,
                          color: AppColors.gradient,
                          spreadRadius: 5.0),
                    ],
                  ),
                  SizedBox(
                    width: media.width * 0.04,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.black.withOpacity(.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0.3, 0.3))
                        ],
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(AppConfig.noImage))),
                  ),
                  SizedBox(
                    width: media.width * 0.04,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: media.height * 0.05,
                    // ),
                    SizedBox(
                      height: media.height * 0.01,
                    ),
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
                          SizedBox(
                            width: media.width * 0.02,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 150,
                            width: media.width,
                            margin: EdgeInsets.only(
                                bottom: 15, left: 30, top: 15, right: 5),
                            decoration: BoxDecoration(
                                color: AppColors.blue.withAlpha(20),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.grey.withOpacity(.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0.3, 0.3))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/svgs/purchase.svg",
                                  height: 100,
                                  width: 50,
                                ),
                                CommonText(
                                  text: "Enquiry",
                                  fontColor: AppColors.skilled,
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppFontSize.sixteen,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 150,
                            width: media.width,
                            margin: EdgeInsets.only(
                                bottom: 15, right: 30, left: 5, top: 15),
                            decoration: BoxDecoration(
                                color: AppColors.blue.withAlpha(20),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.grey.withOpacity(.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0.3, 0.3))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/svgs/purchase.svg",
                                  height: 100,
                                  width: 50,
                                ),
                                CommonText(
                                  text: "Skilled",
                                  fontColor: AppColors.skilled,
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppFontSize.sixteen,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: [
                          CommonText(
                            text: "Banners",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),

                    Center(
                      //Wrap the OverlappedCarousel widget with SizedBox to fix a height. No need to specify width.
                      child: SizedBox(
                        height: min(
                            media.width / 3.3 * (16 / 9), media.height * .9),
                        child: OverlappedCarousel(
                          widgets: widgets, //List of widgets
                          currentIndex: 2,
                          onClicked: (index) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("You clicked at $index"),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: media.width,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withOpacity(.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0.3, 0.3))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, top: 10.0),
                            child: CommonText(
                              text: "Video Ad Content",
                              fontWeight: FontWeight.w500,
                              fontSize: AppFontSize.sixteen,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 8.0),
                            child: CommonText(
                              text:
                                  "Flutter plugin for playing or streaming YouTube videos inline using the official iFrame Player API",
                              fontWeight: FontWeight.w500,
                              fontSize: AppFontSize.fourteen,
                              fontColor: AppColors.black.withOpacity(.5),
                            ),
                          ),
                          Container(
                            height: 180,
                            width: media.width,
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://i.ytimg.com/an_webp/0KPT5EaXUcA/mqdefault_6s.webp?du=3000&sqp=CICf3Z8G&rs=AOn4CLBU5uwLsH7Fe-ubey1YJ_Sn_m0e-Q")),
                                boxShadow: [
                                  BoxShadow(
                                      color: AppColors.black.withOpacity(.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0.3, 0.3))
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: media.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: media.width * 0.04,
                                    ),
                                    CommonText(
                                      text: "Numberblocks- All the Sums...",
                                      fontWeight: FontWeight.w500,
                                      fontSize: AppFontSize.sixteen,
                                      fontColor: AppColors.white,
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.share_sharp,
                                      color: AppColors.white,
                                    ),
                                    SizedBox(
                                      width: media.width * 0.02,
                                    ),
                                    Icon(
                                      Icons.more_vert_rounded,
                                      color: AppColors.white,
                                    ),
                                    SizedBox(
                                      width: media.width * 0.02,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 50,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: AppColors.red),
                                  child: Center(
                                    child: DecoratedIcon(
                                      Icons.play_arrow,
                                      color: AppColors.white,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Spacer()

                                // Expanded(
                                //     flex: 2,
                                //     child: Padding(
                                //       padding: const EdgeInsets.symmetric(
                                //           horizontal: 10.0, vertical: 20.0),
                                //       child: Column(
                                //         crossAxisAlignment: CrossAxisAlignment.start,
                                //         mainAxisAlignment:
                                //             MainAxisAlignment.spaceEvenly,
                                //         children: [
                                //           CommonText(
                                //             text: "Enquiry",
                                //             fontWeight: FontWeight.w500,
                                //             fontSize: AppFontSize.twentyFour,
                                //           ),
                                //           CommonText(
                                //             text: "Tell us what you need today!",
                                //             fontWeight: FontWeight.w500,
                                //             fontSize: AppFontSize.fifteen,
                                //           ),
                                //           GestureDetector(
                                //             onTap: () {},
                                //             child: Container(
                                //               // width:  media.width - 30,
                                //               // margin: const EdgeInsets.all(15.0),
                                //               height: 40,
                                //               decoration: BoxDecoration(
                                //                 borderRadius:
                                //                     BorderRadius.circular(8.0),
                                //                 color: AppColors.primary,
                                //                 gradient: const LinearGradient(
                                //                     colors: [
                                //                       AppColors.primary,
                                //                       AppColors.gradient
                                //                     ],
                                //                     begin: Alignment.topRight,
                                //                     end: Alignment.topLeft),
                                //               ),
                                //               child: Center(
                                //                 child: CommonText(
                                //                   text: "Enquiry Now",
                                //                   fontColor: AppColors.white,
                                //                   fontSize: AppFontSize.twenty,
                                //                   fontWeight: FontWeight.bold,
                                //                   letterSpacing: 1,
                                //                 ),
                                //               ),
                                //             ),
                                //           )
                                //         ],
                                //       ),
                                //     )),
                                // Expanded(
                                //     flex: 2,
                                //     child:
                                //         SvgPicture.asset("assets/svgs/purchase.svg")),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.height * 0.02,
                    ),
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
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: [
                          CommonText(
                            text: "Lucky Draw",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: media.width,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColors.black.withOpacity(.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset(0.3, 0.3))
                          ],
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://imgd.aeplcdn.com/0x0/n/cw/ec/101055/virtus-exterior-right-front-three-quarter.jpeg?isig=0"))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [CommonText(text: "Grand Prize")],
                      ),
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

  List<Widget> widgets = List.generate(
    7,
    (index) => ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(5.0),
      ),
      child: Image.asset(
        'assets/images/$index.jpg', //Images stored in assets folder
        fit: BoxFit.fill,
      ),
    ),
  );
}

// class dummy extends StatelessWidget {
//   const dummy({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // enquiry now
//         Container(
//           height: 150,
//           width: media.width,
//           margin: EdgeInsets.all(15),
//           decoration: BoxDecoration(
//               color: AppColors.white,
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                     color: AppColors.black.withOpacity(.1),
//                     spreadRadius: 1,
//                     blurRadius: 1,
//                     offset: Offset(0.3, 0.3))
//               ]),
//           child: Row(
//             children: [
//               Expanded(
//                   flex: 2,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10.0, vertical: 20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment:
//                       MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CommonText(
//                           text: "Enquiry",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.twentyFour,
//                         ),
//                         CommonText(
//                           text: "Tell us what you need today!",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.fifteen,
//                         ),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                             // width:  media.width - 30,
//                             // margin: const EdgeInsets.all(15.0),
//                             height: 40,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                               BorderRadius.circular(8.0),
//                               color: AppColors.primary,
//                               gradient: const LinearGradient(
//                                   colors: [
//                                     AppColors.primary,
//                                     AppColors.gradient
//                                   ],
//                                   begin: Alignment.topRight,
//                                   end: Alignment.topLeft),
//                             ),
//                             child: Center(
//                               child: CommonText(
//                                 text: "Enquiry Now",
//                                 fontColor: AppColors.white,
//                                 fontSize: AppFontSize.twenty,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1,
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//               Expanded(
//                   flex: 2,
//                   child:
//                   SvgPicture.asset("assets/svgs/purchase.svg")),
//             ],
//           ),
//         ),
//
//         //skilled
//         Container(
//           height: 150,
//           width: media.width,
//           margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
//           decoration: BoxDecoration(
//               color: AppColors.skilled,
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                     color: AppColors.black.withOpacity(.1),
//                     spreadRadius: 1,
//                     blurRadius: 1,
//                     offset: Offset(0.3, 0.3))
//               ]),
//           child: Row(
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10.0, vertical: 20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment:
//                       MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CommonText(
//                           text: "Skilled",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.twentyFour,
//                           fontColor: AppColors.white,
//                         ),
//                         CommonText(
//                           text: "Explore the best service",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.fifteen,
//                           fontColor: AppColors.white,
//                         ),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                             // width:  media.width - 30,
//                             // margin: const EdgeInsets.all(15.0),
//                             height: 40,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                               BorderRadius.circular(8.0),
//                               color: AppColors.primary,
//                               gradient: const LinearGradient(
//                                   colors: [
//                                     AppColors.primary,
//                                     AppColors.gradient
//                                   ],
//                                   begin: Alignment.topRight,
//                                   end: Alignment.topLeft),
//                             ),
//                             child: Center(
//                               child: CommonText(
//                                 text: "Explore Now",
//                                 fontColor: AppColors.white,
//                                 fontSize: AppFontSize.twenty,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1,
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//               Expanded(
//                   flex: 1,
//                   child:
//                   SvgPicture.asset("assets/svgs/purchase.svg")),
//             ],
//           ),
//         ),
//         Container(
//           height: 150,
//           width: media.width,
//           margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
//           decoration: BoxDecoration(
//               color: AppColors.skilled,
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                     color: AppColors.black.withOpacity(.1),
//                     spreadRadius: 1,
//                     blurRadius: 1,
//                     offset: Offset(0.3, 0.3))
//               ]),
//           child: Row(
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10.0, vertical: 20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment:
//                       MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CommonText(
//                           text: "Skilled",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.twentyFour,
//                           fontColor: AppColors.white,
//                         ),
//                         CommonText(
//                           text: "Explore the best service",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.fifteen,
//                           fontColor: AppColors.white,
//                         ),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                             // width:  media.width - 30,
//                             // margin: const EdgeInsets.all(15.0),
//                             height: 40,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                               BorderRadius.circular(8.0),
//                               color: AppColors.primary,
//                               gradient: const LinearGradient(
//                                   colors: [
//                                     AppColors.primary,
//                                     AppColors.gradient
//                                   ],
//                                   begin: Alignment.topRight,
//                                   end: Alignment.topLeft),
//                             ),
//                             child: Center(
//                               child: CommonText(
//                                 text: "Explore Now",
//                                 fontColor: AppColors.white,
//                                 fontSize: AppFontSize.twenty,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1,
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//               Expanded(
//                   flex: 1,
//                   child:
//                   SvgPicture.asset("assets/svgs/purchase.svg")),
//             ],
//           ),
//         ),
//         Container(
//           height: 150,
//           width: media.width,
//           margin: EdgeInsets.only(bottom: 15, right: 15, left: 15),
//           decoration: BoxDecoration(
//               color: AppColors.skilled,
//               borderRadius: BorderRadius.circular(10.0),
//               boxShadow: [
//                 BoxShadow(
//                     color: AppColors.black.withOpacity(.1),
//                     spreadRadius: 1,
//                     blurRadius: 1,
//                     offset: Offset(0.3, 0.3))
//               ]),
//           child: Row(
//             children: [
//               Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 10.0, vertical: 20.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment:
//                       MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CommonText(
//                           text: "Skilled",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.twentyFour,
//                           fontColor: AppColors.white,
//                         ),
//                         CommonText(
//                           text: "Explore the best service",
//                           fontWeight: FontWeight.w500,
//                           fontSize: AppFontSize.fifteen,
//                           fontColor: AppColors.white,
//                         ),
//                         GestureDetector(
//                           onTap: () {},
//                           child: Container(
//                             // width:  media.width - 30,
//                             // margin: const EdgeInsets.all(15.0),
//                             height: 40,
//                             decoration: BoxDecoration(
//                               borderRadius:
//                               BorderRadius.circular(8.0),
//                               color: AppColors.primary,
//                               gradient: const LinearGradient(
//                                   colors: [
//                                     AppColors.primary,
//                                     AppColors.gradient
//                                   ],
//                                   begin: Alignment.topRight,
//                                   end: Alignment.topLeft),
//                             ),
//                             child: Center(
//                               child: CommonText(
//                                 text: "Explore Now",
//                                 fontColor: AppColors.white,
//                                 fontSize: AppFontSize.twenty,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1,
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   )),
//               Expanded(
//                   flex: 1,
//                   child:
//                   SvgPicture.asset("assets/svgs/purchase.svg")),
//             ],
//           ),
//         ),
//
//         // Padding(
//         //   padding: const EdgeInsets.all(8.0),
//         //   child: Table(
//         //       border: TableBorder.all(
//         //           borderRadius: BorderRadius.only(
//         //               topLeft: Radius.circular(8.0),
//         //               topRight: Radius.circular(8.0))),
//         //       // Allows to add a border decoration around your table
//         //       children: [
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //         TableRow(children: [
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //           Container(
//         //             height: media.height / 7,
//         //             // width: 50,
//         //             decoration: BoxDecoration(),
//         //             child: Padding(
//         //               padding: const EdgeInsets.all(25.0),
//         //               child: Image.network(
//         //                 "https://img.freepik.com/free-vector/flat-black-friday-social-media-cover-template_23-2149108898.jpg?w=1380&t=st=1677133339~exp=1677133939~hmac=c24965dbdeaf88ca8a66110e58c1858f4e8e5e69a69121c227a7d74c4be1c44d",
//         //                 fit: BoxFit.cover,
//         //               ),
//         //             ),
//         //           ),
//         //
//         //         ]),
//         //
//         //       ]),
//         // ),
//       ],
//     );
//   }
// }
