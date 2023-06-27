import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/enquiry/shopping/shop_details.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class SheetOneCard extends StatelessWidget {
  const SheetOneCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
        width: media.width / 1,
        margin: const EdgeInsets.only(left: 10, bottom: 15, top: 15, right: 0),
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
                          height: media.height * 0.004,
                        ),
                        CommonText(
                          text: "Retail Shopping",
                          fontSize: AppFontSize.fourteen,
                          fontColor: AppColors.black.withOpacity(.5),
                        ),
                        SizedBox(
                          height: media.height * 0.004,
                        ),
                        CommonText(
                          text: "Anna Nagar, Chennai",
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
                      padding: const EdgeInsets.all(8.0),
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
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const ShopDetails());
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            bottom: 8.0, top: 8.0, right: 20.0, left: 20.0),
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
                        child: const CommonText(
                          text: "Get Info",
                          fontColor: AppColors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
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
