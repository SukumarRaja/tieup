import 'package:flutter/material.dart';
import '../../controller/main.dart';
import '../../tranlations/languages.dart';
import '../themes/colors.dart';
import '../themes/font_size.dart';
import '../widgets/common_button.dart';
import '../widgets/common_text.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key, required this.onTap}) : super(key: key);
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      height: media.height * 1,
      width: media.width * 1,
      color: Colors.transparent.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(media.width * 0.05),
            width: media.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white),
            child: Column(
              children: [
                SizedBox(
                  width: media.width * 0.6,
                  child: Image.asset(
                    'assets/images/noInternet.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                CommonText(
                  text: (languages.isNotEmpty &&
                          MainController.to.chooseLanguage != "")
                      ? languages[MainController.to.chooseLanguage]
                          ['text_nointernet']
                      : 'No Internet Connection',
                  fontSize: AppFontSize.eighteen,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                CommonText(
                    text: (languages.isNotEmpty &&
                            MainController.to.chooseLanguage != "")
                        ? languages[MainController.to.chooseLanguage]
                            ['text_nointernetdesc']
                        : 'Please check your Internet connection, try enabling wifi or try again later',
                    fontSize: AppFontSize.fourteen,
                    textAlign: TextAlign.center,
                    fontColor: AppColors.black.withOpacity(.3)),
                SizedBox(
                  height: media.width * 0.05,
                ),
                CommonButton(
                    onPressed: onTap,
                    text: languages.isNotEmpty &&
                            MainController.to.chooseLanguage != ""
                        ? languages[MainController.to.chooseLanguage]['text_ok']
                        : "OK")
              ],
            ),
          )
        ],
      ),
    );
  }
}
