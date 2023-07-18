import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class LocationText extends StatelessWidget {
  const LocationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(color: AppColors.secondary.withOpacity(.7)),
      height: 50,
      width: media.width,
      child: Row(
        children: [
          SizedBox(
            width: media.width * 0.02,
          ),
          CommonText(
            text: "All Category",
            fontWeight: FontWeight.w600,
            fontSize: AppFontSize.twenty,
          ),
          Spacer(),
          SizedBox(
            width: media.width * 0.02,
          ),
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
                text: "DB Road,RS Puram...",
                fontColor: AppColors.black.withOpacity(.4),
              ),
            ],
          ),
          SizedBox(
            width: media.width * 0.02,
          )
        ],
      ),
    );
  }
}
