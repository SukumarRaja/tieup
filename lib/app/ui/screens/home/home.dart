import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tieup/app/ui/themes/font_size.dart';
import 'package:tieup/app/ui/widgets/common_text.dart';
import 'package:tieup/app/ui/widgets/home/career_card.dart';
import '../../../controller/slider.dart';
import '../../../utility/degings.dart';
import '../../themes/colors.dart';
import '../../widgets/banner.dart';
import '../../widgets/home/ad_table_16.dart';
import '../../widgets/home/consolation_prize.dart';
import '../../widgets/home/enquiry_card.dart';
import '../../widgets/home/location_text.dart';
import '../../widgets/home/logo_and_profile.dart';
import '../../widgets/home/lucky_draw.dart';
import '../../widgets/home/prize_card.dart';
import '../../widgets/home/flickdream_card.dart';
import '../../widgets/home/video_ad.dart';
import '../../widgets/main/green_bubble.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        elevation: 5,
        // shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(15),
        //         bottomRight: Radius.circular(15))),

        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
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
                            image: NetworkImage(
                                "https://media.licdn.com/dms/image/C5103AQEBnEMejoGBrw/profile-displayphoto-shrink_800_800/0/1555953611010?e=2147483647&v=beta&t=1ZGtNOpKvJj5DIKhh8O1zHXGZ3XB6FRpmHo1DDP1vU0"))),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CommonText(
                        text: "Name",
                        fontSize: AppFontSize.eighteen,
                        fontWeight: FontWeight.w500,
                      ),
                      CommonText(
                        text: "#TU2464AJM6336",
                        fontSize: AppFontSize.sixteen,
                        fontColor: AppColors.grey,
                      ),
                      CommonText(
                        text: "1234567890",
                        fontSize: AppFontSize.sixteen,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            buildContainer(name: "Profile", icon: Icons.person, onTap: () {}),
            buildContainer(
                name: "About", icon: Icons.hexagon_outlined, onTap: () {}),
            buildContainer(
                name: "Help & Support", icon: Icons.info_outline, onTap: () {}),
            buildContainer(
                name: "Settings", icon: Icons.settings, onTap: () {}),
            buildContainer(
                name: "Privacy",
                icon: Icons.privacy_tip_outlined,
                onTap: () {}),
            const Center(
              child: CommonText(
                text: "v1.0.0",
                fontSize: AppFontSize.fourteen,
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
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

            //logo and profile image
            const LogoAndProfile(),

            //body
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // SizedBox(
                    //   height: media.height * 0.01,
                    // ),

                    //running banner or sliders
                    // Obx(
                    //   () => SliderController.to.loadingSliders == true
                    //       ? const Text("Loading")
                    //       : CommonSlider(
                    //           // imageSliders: SliderController.to.imageSlider,
                    //           dbImage: SliderController.to.dbImage,
                    //           imageSliders: const [
                    //             "https://codecanyon.img.customer.envatousercontent.com/files/416365027/Preview590x300.png?auto=compress%2Cformat&fit=crop&crop=top&w=590&h=300&s=5964870d4d6cefefb5d3f913cf7827ec",
                    //             "https://www.bharattaxi.com/blog/wp-content/uploads/2020/04/modern-sale-banner-website-slider-template-design_54925-44.jpg",
                    //             "https://img.freepik.com/premium-vector/modern-sale-banner-website-slider-template-design_54925-46.jpg",
                    //           ],
                    //         ),
                    // ),

                    Container(
                      height: 150,
                      width: media.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://img.freepik.com/premium-vector/modern-sale-banner-website-slider-template-design_54925-46.jpg",
                              ))),
                    ),

                    // location text
                    const LocationText(),

                    // enquiry and skill card
                    Column(
                      children: const [
                        EnquiryCard(),
                        CareerCard(),
                        FlickDreamCard(),
                      ],
                    ),

                    //banner text
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: media.width * 0.04),
                      child: Row(
                        children: const [
                          CommonText(
                            text: "Banners",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),

                    //8*2 ad table
                    const AdTable16(),

                    //video ad
                    const VideoAd(),
                    SizedBox(
                      height: media.height * 0.02,
                    ),

                    //ad
                    Obx(
                      () => SliderController.to.loadingSliders == true
                          ? const Text("Loading")
                          : CommonSlider(
                              // imageSliders: SliderController.to.imageSlider,
                              dbImage: SliderController.to.dbImage,
                              imageSliders: const [
                                "https://codecanyon.img.customer.envatousercontent.com/files/416365027/Preview590x300.png?auto=compress%2Cformat&fit=crop&crop=top&w=590&h=300&s=5964870d4d6cefefb5d3f913cf7827ec",
                                "https://www.bharattaxi.com/blog/wp-content/uploads/2020/04/modern-sale-banner-website-slider-template-design_54925-44.jpg",
                                "https://img.freepik.com/premium-vector/modern-sale-banner-website-slider-template-design_54925-46.jpg",
                              ],
                            ),
                    ),

                    //lucky draw text
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: media.width * 0.04,
                          vertical: media.height * 0.01),
                      child: Row(
                        children: const [
                          CommonText(
                            text: "Lucky Draw",
                            fontColor: AppColors.skilled,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFontSize.eighteen,
                          ),
                        ],
                      ),
                    ),

                    //first price
                    const PrizeCard(
                      prizeName: "Grand Prize",
                      productName: "BMW Car",
                      prizeQty: "1",
                      prizeImage:
                          "https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg",
                    ),

                    //second price
                    const PrizeCard(
                      prizeName: "Second Prize",
                      productName: "Nike Shoe",
                      prizeQty: "300",
                      prizeImage:
                          "https://cdna.artstation.com/p/assets/images/images/047/520/028/large/rahul-chandra-nike-show.jpg?1647799767",
                    ),

                    //third price
                    const PrizeCard(
                      prizeName: "Third Prize",
                      productName: "Asus Tuf A15",
                      prizeQty: "50",
                      prizeImage:
                          "https://asus.in/products/creator-series/tab-q3.png",
                    ),

                    //fourth price
                    const PrizeCard(
                      prizeName: "Fourth Prize",
                      productName: "Poco X3 PRO",
                      prizeQty: "25",
                      prizeImage:
                          "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/X3_Pro_price.jpg",
                    ),

                    //Consolation price
                    const ConsolationPrizeCard(
                      members: "1000",
                      voucherName: "Smart Phone",
                      vouchers: "500",
                      image:
                          "https://d1o7uku192uawx.cloudfront.net/mobile/media/catalog/product/3/1/312x200_flipkart.png",
                    ),

                    //Consolation 2
                    const ConsolationPrizeCard(
                      members: "1500",
                      voucherName: "LIC",
                      vouchers: "750",
                      image:
                          "https://www.biznextindia.com/wp-content/uploads/2019/01/LIC-to-reduce-stake-in-IDBI-Bank.jpg",
                    ),

                    //Consolation 3
                    const ConsolationPrizeCard(
                      members: "2500",
                      voucherName: "Woodland Shoe",
                      vouchers: "250",
                      image:
                          "https://pbs.twimg.com/media/Cx2xRAQUAAABYb0.jpg:large",
                    ),

                    //Consolation 4
                    const ConsolationPrizeCard(
                      members: "250",
                      voucherName: "Ideapad 3",
                      vouchers: "105",
                      image:
                          "https://i.ytimg.com/vi/nCi0EBl8MYY/maxresdefault.jpg",
                    ),

                    //lucky draw starts
                    const LuckyDrawCard(),

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

  GestureDetector buildContainer({name, icon, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.white),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withOpacity(.15)),
              padding: const EdgeInsets.all(5),
              child: Icon(
                icon,
                size: 18,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            CommonText(
              text: name,
              fontSize: AppFontSize.eighteen,
              fontWeight: FontWeight.w500,
            ),
            // const Spacer(),
            // const Icon(
            //   Icons.arrow_forward_ios_outlined,
            //   size: 18,
            //   color: AppColors.black,
            // )
          ],
        ),
      ),
    );
  }
}
