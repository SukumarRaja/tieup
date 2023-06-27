import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tieup/app/controller/auth.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../animation/login_to_register.dart';
import '../../../controller/main.dart';
import '../../../utility/helpers.dart';
import '../../../utility/utility.dart';
import '../../screens/otp_verify.dart';
import '../../themes/colors.dart';
import '../../themes/font_size.dart';
import '../common_text.dart';
import '../common_textform_field.dart';
import '../intl_phone_field.dart';
import 'gender_card.dart';
import 'login_title.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent>
    with TickerProviderStateMixin {
  late final List<Widget> createAccountContent;
  late final List<Widget> loginContent;

  Widget inputField(String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton({required String text, required Function() onPressed}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: AppColors.primary,
          shape: const StadiumBorder(),
          elevation: 8,
          shadowColor: Colors.black87,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: AppColors.primary,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'or',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 1,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget logos() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/facebook.png'),
          const SizedBox(width: 24),
          Image.asset('assets/images/google.png'),
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: TextButton(
        onPressed: () {
          Get.to(() => const OtpVerify(
                comeFromRegister: false,
              ));
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // var media = MediaQuery.of(context).size;
    createAccountContent = [
      Form(
          child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15),
        child: Column(
          children: [
            CommonTextFormField(
              hintText: "Username",
              prefixIcon: Icons.person_outline,
              controller: AuthController.to.name,
            ),
            CommonTextFormField(
              hintText: "Email",
              prefixIcon: Icons.mail_outline,
              controller: AuthController.to.email,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: IntlPhoneField(
                hintText: "Phone",
                maxLength: 10,
                initialCountryCode: "IN",
              ),
            ),
            CommonTextFormField(
              hintText: "Password",
              prefixIcon: Icons.lock,
              controller: AuthController.to.password,
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: AppColors.white,
              ),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GenderCard(
                          gender: "Male",
                          onPressed: () {
                            AuthController.to.selectedGender = "Male";
                            AuthController.to.selectGenderIndex = 0;
                          },
                          index: 0,
                        ),
                        GenderCard(
                          gender: "Female",
                          onPressed: () {
                            AuthController.to.selectedGender = "Female";
                            AuthController.to.selectGenderIndex = 1;
                          },
                          index: 1,
                        ),
                        GenderCard(
                          gender: "Others",
                          onPressed: () {
                            AuthController.to.selectedGender = "Others";
                            AuthController.to.selectGenderIndex = 2;
                          },
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
      SizedBox(
        height: Get.height * 0.02,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => InkWell(
                onTap: () {
                  MainController.to.termsAndConditions =
                      !MainController.to.termsAndConditions;
                },
                child: Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(5.0),
                      color: MainController.to.termsAndConditions == true
                          ? AppColors.primary
                          : AppColors.secondary),
                  child: Icon(Icons.done_rounded,size: 18,
                      color: MainController.to.termsAndConditions == true
                          ? AppColors.white
                          : AppColors.secondary),
                ),
              )),
          SizedBox(
            width: Get.width * 0.05,
          ),

          //terms and conditions
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonText(
                    text: "I agree to the ",
                    fontSize: AppFontSize.sixteen,
                    fontColor: AppColors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchInWebViewOrVC(Uri.parse(
                          "https://www.termsandcondiitionssample.com/"));
                    },
                    child: CommonText(
                      text: "Terms &",
                      fontSize: AppFontSize.sixteen,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.width * 0.005,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      launchInWebViewOrVC(Uri.parse(
                          "https://www.termsandcondiitionssample.com/"));
                    },
                    child: CommonText(
                      text: "Conditions ",
                      fontSize: AppFontSize.sixteen,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CommonText(
                    text: "and ",
                    fontSize: AppFontSize.sixteen,
                    fontColor: AppColors.black,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchInWebViewOrVC(Uri.parse(
                          "https://www.privacypolicygenerator.info/"));
                    },
                    child: CommonText(
                      text: "Privacy Policy",
                      fontSize: AppFontSize.sixteen,
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      Obx(() => MainController.to.termsAndConditions == true
          ? loginButton(
              text: 'Sign Up',
              onPressed: () {
                Get.to(() => const OtpVerify(
                      comeFromRegister: true,
                    ));
              })
          : const SizedBox()),
      // orDivider(),
      // logos(),
    ];

    loginContent = [
      Padding(
        padding: EdgeInsets.only(right: 15, left: 15),
        child: Form(
            child: Column(
          children: [
            CommonTextFormField(
              hintText: "Email",
              prefixIcon: Icons.mail_outline,
              controller: AuthController.to.email,
            ),
            CommonTextFormField(
              hintText: "Password",
              prefixIcon: Icons.lock,
              controller: AuthController.to.password,
            ),
          ],
        )),
      ),
      loginButton(text: 'Log In', onPressed: () {}),
      forgotPassword(),
    ];

    ChangeScreenAnimation.initialize(
      vsync: this,
      createAccountItems: createAccountContent.length,
      loginItems: loginContent.length,
    );

    for (var i = 0; i < createAccountContent.length; i++) {
      createAccountContent[i] = LoginAnimatedBuilder.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.createAccountAnimations[i],
        child: createAccountContent[i],
      );
    }

    for (var i = 0; i < loginContent.length; i++) {
      loginContent[i] = LoginAnimatedBuilder.wrapWithAnimatedBuilder(
        animation: ChangeScreenAnimation.loginAnimations[i],
        child: loginContent[i],
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    ChangeScreenAnimation.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const Positioned(
            top: 50,
            left: 24,
            child: TopText(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: createAccountContent,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: loginContent,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: BottomText(),
            ),
          ),
        ],
      ),
    );
  }
}
