import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../controller/auth.dart';
import '../../controller/otp.dart';
import '../themes/colors.dart';
import '../themes/font_size.dart';
import '../widgets/common_text.dart';
import '../widgets/otp_pinput.dart';
import 'home/main.dart';

class OtpVerify extends StatelessWidget {
  const OtpVerify({Key? key, this.comeFromRegister}) : super(key: key);
  final bool? comeFromRegister;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        maintainBottomViewPadding: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: media.width * 0.01),
                  child: const CommonText(
                    text: "Otp Verify",
                    fontSize: AppFontSize.twentyFour,
                    // fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
            SizedBox(
                height: media.height * 0.35,
                child: SvgPicture.asset("assets/svgs/otp.svg")),
            // SizedBox(
            //   height: media.height * 0.09,
            // ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Center(
              child: CommonText(
                text:
                    "Please type the OTP as shared on your ${AuthController.to.vEmail.text}",
                fontColor: AppColors.black.withOpacity(.4),
              ),
            ),
            SizedBox(
              height: media.width * 0.06,
            ),
            Form(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpInput(
                        autoFocus: true, controller: OtpController.to.first),
                    OtpInput(
                        autoFocus: false, controller: OtpController.to.second),
                    OtpInput(
                        autoFocus: false, controller: OtpController.to.third),
                    OtpInput(
                        autoFocus: false, controller: OtpController.to.fourth),
                    OtpInput(
                        autoFocus: false, controller: OtpController.to.fifth),
                    OtpInput(
                        autoFocus: false, controller: OtpController.to.sixth),
                  ],
                ),
              ],
            )),

            SizedBox(
              height: media.width * 0.06,
            ),
            GestureDetector(
              onTap: () {
                if (comeFromRegister == true) {
                  Get.to(() => HomeMain());
                } else {
                  // Get.to(() => const ResetPassword());
                }
              },
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: AppColors.primary,
                    gradient: const LinearGradient(
                        colors: [AppColors.primary, AppColors.gradient],
                        begin: Alignment.topRight,
                        end: Alignment.topLeft),
                  ),
                  child: const Center(
                    child: CommonText(
                      text: "Verify Otp",
                      fontColor: AppColors.white,
                      fontSize: AppFontSize.twenty,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CommonText(text: "Didn't receive?"),
                SizedBox(width: media.width * 0.02),
                Obx(() => GestureDetector(
                    onTap: OtpController.to.isStartResend == true
                        ? null
                        : () {
                            OtpController.to.startTimer();
                          },
                    child: CommonText(
                      text: "Resend OTP",
                      fontColor: OtpController.to.isStartResend == true
                          ? AppColors.black.withOpacity(.3)
                          : AppColors.primary,
                    ))),
              ],
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Obx(() => OtpController.to.isStartResend == true
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: CommonText(
                            text:
                                "Otp auto resend in ${OtpController.to.seconds} secs",
                            fontColor: AppColors.primary,
                          )),
                    ],
                  )
                : const SizedBox()),

            SizedBox(
              height: media.height * 0.02,
            ),
          ],
        ),
      ),
    ));
  }
}
