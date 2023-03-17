import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main.dart';
import '../themes/colors.dart';
import '../widgets/common_loading.dart';
import 'auth/login.dart';
import 'language_select.dart';
import 'no_internet.dart';
import 'onboard.dart';

class Initial extends StatefulWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  void initState() {

    // MainController.to.checkIsUpdateAvailable();

    Future.delayed(Duration.zero, () async {
      getLanguageDone();
    });
    MainController.to.checkInternetConnection();


    super.initState();
  }

  getLanguageDone() async {
    await MainController.to.checkConnectivity();
    if (MainController.to.internet == true) {
      var val = await MainController.to.checkInitialData();
      print("val is $val");
      if (val == "noToken") {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Login()));
        });
      } else if (val == "token") {
        // Navigator.pushAndRemoveUntil(
        //     context, MaterialPageRoute(builder: (context) => Main()));
      } else if (val == "noLanguageChoose") {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Languages()));
        });
      } else {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const OnBoarding()));
        });
      }
    } else {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Material(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: media.height * 1,
              width: media.width * 1,
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(media.width * 0.01),
                    width: media.width * 0.429,
                    height: media.width * 0.429,
                    decoration: const BoxDecoration(color: AppColors.white),
                    child: const CommonLoading(),
                  ),
                ],
              ),
            ),

            // internet is not connected
            Obx(() => MainController.to.internet == false
                ? Positioned(
                    top: 0,
                    child: NoInternet(
                      onTap: () {
                        //try again
                        setState(() {
                          MainController.to.internet = true;
                          getLanguageDone();
                        });
                      },
                    ))
                : Container()),
          ],
        ),
      ),
    );
  }
}
