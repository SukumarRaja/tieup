import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tieup/app/ui/screens/initial.dart';
import '../../controller/main.dart';
import '../../tranlations/languages.dart';
import '../themes/colors.dart';
import '../themes/font_size.dart';
import '../widgets/common_button.dart';
import '../widgets/common_text.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GetBuilder(
        init: MainController(),
        initState: (_) {
          MainController.to.chooseLanguage = 'en';
          MainController.to.languageDirection = 'ltr';
        },
        builder: (_) {
          return Material(
            child: Directionality(
              textDirection: (MainController.to.languageDirection == 'rtl')
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: Container(
                padding: EdgeInsets.fromLTRB(media.width * 0.05,
                    media.width * 0.05, media.width * 0.05, media.width * 0.05),
                height: media.height * 1,
                width: media.width * 1,
                color: AppColors.white,
                child: Column(
                  children: [
                    Container(
                      height: media.width * 0.11 +
                          MediaQuery.of(context).padding.top,
                      width: media.width * 1,
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top),
                      // color: AppColors.primary,
                      child: Stack(
                        children: [
                          Container(
                            height: media.width * 0.11,
                            width: media.width * 1,
                            alignment: Alignment.center,
                            child: Obx(() => CommonText(
                                  text: (languages.isNotEmpty &&
                                          MainController.to.chooseLanguage !=
                                              "")
                                      ? languages[
                                              MainController.to.chooseLanguage]
                                          ['text_choose_language']
                                      : "Choose Language",
                                  fontSize: AppFontSize.sixteen,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    SizedBox(
                      width: media.width * 0.9,
                      height: media.height * 0.16,
                      child: Image.asset(
                        "assets/images/selectLanguage.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: languages
                              .map(
                                (i, value) => MapEntry(
                                  i,
                                  Obx(() => InkWell(
                                        onTap: () {
                                          MainController.to.chooseLanguage = i;
                                          if (MainController.to.chooseLanguage == 'ar' ||
                                              MainController
                                                      .to.chooseLanguage ==
                                                  'ur' ||
                                              MainController
                                                      .to.chooseLanguage ==
                                                  'iw') {
                                            MainController
                                                .to.languageDirection = 'rtl';
                                          } else {
                                            MainController
                                                .to.languageDirection = 'ltr';
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(
                                              media.width * 0.025),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Obx(() => CommonText(
                                                  text: (languages.isNotEmpty &&
                                                          MainController.to
                                                                  .chooseLanguage !=
                                                              "")
                                                      ? languagesCode
                                                          .firstWhere((e) =>
                                                              e['code'] ==
                                                              i)['name']
                                                          .toString()
                                                      : "Code(en) Name(english)",
                                                  fontSize:
                                                      AppFontSize.sixteen)),
                                              Container(
                                                height: media.width * 0.05,
                                                width: media.width * 0.05,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xff222222),
                                                        width: 1.2)),
                                                alignment: Alignment.center,
                                                child: (MainController.to
                                                            .chooseLanguage ==
                                                        i)
                                                    ? Container(
                                                        height:
                                                            media.width * 0.03,
                                                        width:
                                                            media.width * 0.03,
                                                        decoration:
                                                            const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color: Color(
                                                                    0xff222222)),
                                                      )
                                                    : Container(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                ),
                              )
                              .values
                              .toList(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Obx(() => MainController.to.chooseLanguage != ''
                        ? CommonButton(
                            onPressed: () {
                              MainController.to
                                  .setSelectedLanguageToLocalDevice(
                                      language:
                                          MainController.to.chooseLanguage);
                              MainController.to
                                  .setSelectedLanguageDirectionLocalDevice(
                                      direction:
                                          MainController.to.languageDirection);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Initial()));
                            },
                            text: (languages.isNotEmpty &&
                                    MainController.to.chooseLanguage != "")
                                ? languages[MainController.to.chooseLanguage]
                                    ['text_confirm']
                                : "Confirm")
                        : Container()),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
