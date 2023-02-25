import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class VideoAd extends StatelessWidget {
  const VideoAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0.3, 0.3))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: CommonText(
              text: "Video Ad Content",
              fontWeight: FontWeight.w500,
              fontSize: AppFontSize.sixteen,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
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
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(10.0),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://pbs.twimg.com/media/BuaBaaeCAAAnVPR.jpg")),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.black.withOpacity(.1),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0.3, 0.3))
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
                    const CommonText(
                      text: "Numberblocks- All the Sums...",
                      fontWeight: FontWeight.w500,
                      fontSize: AppFontSize.sixteen,
                      fontColor: AppColors.white,
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.share_sharp,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: media.width * 0.02,
                    ),
                    const Icon(
                      Icons.more_vert_rounded,
                      color: AppColors.white,
                    ),
                    SizedBox(
                      width: media.width * 0.02,
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: AppColors.red),
                  child: const Center(
                    child: DecoratedIcon(
                      Icons.play_arrow,
                      color: AppColors.white,
                      size: 35,
                    ),
                  ),
                ),
                const Spacer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
