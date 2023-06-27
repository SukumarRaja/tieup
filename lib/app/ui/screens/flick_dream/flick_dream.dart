import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../../widgets/common_text.dart';

class FlickDream extends StatelessWidget {
  const FlickDream({Key? key}) : super(key: key);

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
        title: const CommonText(
          text: "FlickDream",
          fontSize: AppFontSize.eighteen,
        ),
        actions: const [
          Center(
            child: CommonText(
              text: "Need Help?",
              fontSize: AppFontSize.fourteen,
              fontColor: AppColors.primary,
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: SafeArea(
          child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(
                  text: "Create Entertainment",
                  fontSize: AppFontSize.twentyFour,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 5,
                ),
                const CommonText(
                  text:
                      "The misadventures of an Indian film director as he attempts to make the leap from Bollywood to Hollywood",
                  fontSize: AppFontSize.twelve,
                  fontColor: AppColors.grey,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.primary),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.primary)),
                          child: const Icon(
                            Icons.play_arrow_outlined,
                            color: AppColors.primary,
                            size: 15,
                          )),
                      const CommonText(
                        text: "Watch Video",
                        fontSize: AppFontSize.fourteen,
                        fontWeight: FontWeight.w700,
                        fontColor: AppColors.primary,
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          buildContainer(
              title: "Short Flim",
              subTitle: "Creators upload your video",
              icon: Icons.movie_creation_outlined,
              onTap: () {}),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.movie_creation_outlined,
                      color: AppColors.primary,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CommonText(
                          text: "Flim Industry",
                          fontSize: AppFontSize.eighteen,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CommonText(
                          text: "News, Movies, Reviews, etc...",
                          fontSize: AppFontSize.twelve,
                          fontColor: AppColors.grey,
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
                const SizedBox(
                  height: 10.0,
                ),
                buildShorFlimSubContainer(
                    name: "News", icon: Icons.newspaper, onTap: () {}),
                buildShorFlimSubContainer(
                    name: "Movie Reviews",
                    icon: Icons.reviews_outlined,
                    onTap: () {}),
                buildShorFlimSubContainer(
                    name: "Celebrity Interviews",
                    icon: Icons.newspaper,
                    onTap: () {}),
              ],
            ),
          ),
          buildContainer(
              title: "Posters",
              subTitle: "Upcoming Posters",
              icon: Icons.movie_creation_outlined,
              onTap: () {}),
          buildContainer(
              title: "Teasers",
              subTitle: "Upcoming movie teasers",
              icon: Icons.movie_creation_outlined,
              onTap: () {}),
          buildContainer(
              title: "Flim Making News",
              subTitle: "Behind the screen",
              icon: Icons.movie_creation_outlined,
              onTap: () {}),
          buildContainer(
              title: "Industry Jobs",
              subTitle: "Discover dream job",
              icon: Icons.movie_creation_outlined,
              onTap: () {}),
        ],
      )),
    );
  }

  buildContainer({title, subTitle, icon, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 15, right: 15, left: 15),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.white),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.primary,
              size: 35,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonText(
                  text: title,
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(
                  height: 5,
                ),
                CommonText(
                  text: subTitle,
                  fontSize: AppFontSize.twelve,
                  fontColor: AppColors.grey,
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
    );
  }

  buildShorFlimSubContainer({name, icon, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.symmetric(vertical: 5),
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
              fontSize: AppFontSize.sixteen,
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
    );
  }
}
