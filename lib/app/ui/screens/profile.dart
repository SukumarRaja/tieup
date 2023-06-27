import 'package:flutter/material.dart';
import 'package:tieup/app/ui/themes/colors.dart';
import 'package:tieup/app/ui/themes/font_size.dart';
import 'package:tieup/app/ui/widgets/common_text.dart';
import '../../utility/degings.dart';
import '../widgets/main/green_bubble.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.black,
          size: 20,
        ),
        actions: [
          const Icon(
            Icons.notifications_none,
            color: Colors.black,
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        physics: BouncingScrollPhysics(),
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
                  children: [
                    const CommonText(
                      text: "Name",
                      fontSize: AppFontSize.eighteen,
                      fontWeight: FontWeight.w500,
                    ),
                    const CommonText(
                      text: "#TU2464AJM6336",
                      fontSize: AppFontSize.sixteen,
                      fontColor: AppColors.grey,
                    ),
                    const CommonText(
                      text: "1234567890",
                      fontSize: AppFontSize.sixteen,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary.withOpacity(.15)),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 18,
                    color: AppColors.primary,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: AppColors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CommonText(
                  text: "Rewards",
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w500,
                ),
                Container(
                  width: 1,
                  height: 10,
                  color: AppColors.grey,
                ),
                const CommonText(
                  text: "Benefits",
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w500,
                ),
                Container(
                  width: 1,
                  height: 10,
                  color: AppColors.grey,
                ),
                const CommonText(
                  text: "Refer & Earn",
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            thickness: 1,
            color: AppColors.grey,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary.withOpacity(.15)),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.business_center,
                    size: 18,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const CommonText(
                  text: "My Business Listings",
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: AppColors.primary,
                )
              ],
            ),
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.6),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    // padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.primary.withOpacity(.15)),
                            padding: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.business_center,
                              size: 18,
                              color: AppColors.primary,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CommonText(
                            text: index == 0
                                ? "Enquiry"
                                : index == 1
                                    ? "Career"
                                    : index == 2
                                        ? "Flick Dream"
                                        : "Luckydraw",
                            fontSize: AppFontSize.eighteen,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primary),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.white),
                  padding: const EdgeInsets.all(5),
                  child: const Icon(
                    Icons.business_center,
                    size: 18,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const CommonText(
                  text: "Advertisement",
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w500,
                  fontColor: AppColors.white,
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: AppColors.white,
                )
              ],
            ),
          ),
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
          SizedBox(
            height: 10,
          ),
          buildContainer(
              name: "About", icon: Icons.hexagon_outlined, onTap: () {}),
          buildContainer(
              name: "About", icon: Icons.hexagon_outlined, onTap: () {}),
          buildContainer(
              name: "About", icon: Icons.hexagon_outlined, onTap: () {}),
          buildContainer(
              name: "About", icon: Icons.hexagon_outlined, onTap: () {}),
          buildContainer(
              name: "About", icon: Icons.hexagon_outlined, onTap: () {}),
        ],
      )),
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
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 18,
              color: AppColors.black,
            )
          ],
        ),
      ),
    );
  }
}
