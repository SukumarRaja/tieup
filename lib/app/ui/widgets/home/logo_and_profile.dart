import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tieup/app/ui/screens/profile.dart';
import '../../themes/colors.dart';

class LogoAndProfile extends StatelessWidget {
  const LogoAndProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                debugPrint("Drawer clicked");
                Scaffold.of(context).openDrawer();
              },
              child: Icon(
                Icons.menu,
                size: 28,
              )),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: const BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/8/89/Sky_3D_DE_Logo_2015.png"))),
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
          GestureDetector(
            onTap: () {
              Get.to(()=>Profile());
            },
            child: Container(
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
          ),
          // SizedBox(
          //   width: media.width * 0.04,
          // ),
        ],
      ),
    );
  }
}
