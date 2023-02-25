import 'package:flutter/material.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';

class SheetTwoCard extends StatelessWidget {
  const SheetTwoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColors.white,
      ),
      child: Column(
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
          const CommonText(
            text: "The Covai\nMens Wear",
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w500,
            fontSize: AppFontSize.eighteen,
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 8.0, right: 8, left: 8, top: 2),
            child: CommonText(
              text: "Retail Shopping",
              textAlign: TextAlign.center,
              fontColor: AppColors.black.withOpacity(.5),
              fontSize: AppFontSize.fourteen,
            ),
          ),
        ],
      ),
    );
  }
}
