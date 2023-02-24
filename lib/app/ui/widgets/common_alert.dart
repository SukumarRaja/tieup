import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../screens/enquiry/enquiry.dart';
import '../themes/colors.dart';
import '../themes/font_size.dart';
import 'common_text.dart';

commonAlertDialog(BuildContext context,
    {required String content, required Function() confirmButtonPressed}) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.red),
      child: const Center(
        child: Text(
          "Cancel",
          style: TextStyle(color: AppColors.white),
        ),
      ),
    ),
    onPressed: () {
      if (kDebugMode) {
        print("print");
      }
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    onPressed: confirmButtonPressed,
    child: Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.green),
      child: const Center(
        child: Text(
          "Confirm",
          style: TextStyle(color: AppColors.white),
        ),
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    backgroundColor: Colors.grey.shade300,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.warning_amber_rounded,
          color: Colors.red,
          size: 25,
        ),
        SizedBox(
          width: 10,
        ),
        CommonText(text: "Alert")
      ],
    ),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content,
          style: const TextStyle(fontSize: 16, color: AppColors.black),
        )
      ],
    ),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

successAlert(BuildContext context,
    {required String content, required Function() confirmButtonPressed}) {
  var media = MediaQuery.of(context).size;
  Widget continueButton = TextButton(
    onPressed: confirmButtonPressed,
    child: Container(
      // height: 30,
      width: media.width,
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child: const Center(
        child: CommonText(
          text: "Ok",
          fontColor: AppColors.white,
        ),
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    backgroundColor: Colors.grey.shade300,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonText(
              text: content,
            )
          ],
        ),
        SizedBox(
          height: media.width * 0.02,
        ),
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.black.withOpacity(.1),
            ),
            child: const Icon(
              Icons.check,
              color: AppColors.green,
              size: 35,
            )),
      ],
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

errorAlert(BuildContext context,
    {required String content, required Function() confirmButtonPressed}) {
  var media = MediaQuery.of(context).size;
  Widget continueButton = TextButton(
    onPressed: confirmButtonPressed,
    child: Container(
      // height: 30,
      width: media.width,
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.primary,
        gradient: const LinearGradient(
            colors: [AppColors.primary, AppColors.secondary],
            begin: Alignment.topRight,
            end: Alignment.topLeft),
      ),
      child: const Center(
        child: CommonText(
          text: "Ok",
          fontColor: AppColors.white,
        ),
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    backgroundColor: Colors.grey.shade300,
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonText(
              textAlign: TextAlign.center,
              text: content,
            )
          ],
        ),
        SizedBox(
          height: media.width * 0.02,
        ),
        const Icon(
          Icons.cancel,
          color: AppColors.red,
          size: 35,
        ),
      ],
    ),
    actions: [
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

rejectDialog(BuildContext context,
    {required String content, required Function() confirmButtonPressed}) {
  var media = MediaQuery.of(context).size;
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: const Center(
        child: Text(
          "Cancel",
          style: TextStyle(color: AppColors.black),
        ),
      ),
    ),
    onPressed: () {
      if (kDebugMode) {
        print("print");
      }
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    onPressed: confirmButtonPressed,
    child: Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child: const Center(
        child: Text(
          "Confirm",
          style: TextStyle(color: AppColors.black),
        ),
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    backgroundColor: Colors.grey.shade300,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(
          Icons.warning_amber_rounded,
          color: Colors.red,
          size: 25,
        ),
        SizedBox(
          width: 10,
        ),
        CommonText(text: "Alert")
      ],
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content,
          style: const TextStyle(fontSize: 16, color: AppColors.black),
        ),
        // SizedBox(
        //   // height: 60,
        //     width: media.width,
        //     child: Form(
        //         key: DriverController.to.rejectKey,
        //         child: TextFormField(
        //           controller: DriverController.to.rejectReason,
        //           decoration:
        //           const InputDecoration(hintText: "enter reject reason"),
        //           validator: (data) {
        //             if (data!.isEmpty || data == "") {
        //               return commonToast(msg: "please fill the reject reason");
        //             } else if (data.length < 8) {
        //               return commonToast(msg: "reason minimum 8 char");
        //             }
        //             return null;
        //           },
        //         )))
      ],
    ),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

updateAlertDialog(BuildContext context,
    {required String content, required Function() confirmButtonPressed}) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: const Center(
        child: Text(
          "Cancel",
          style: TextStyle(color: AppColors.black),
        ),
      ),
    ),
    onPressed: () {
      if (kDebugMode) {
        print("print");
      }
      Get.back();
    },
  );
  Widget continueButton = TextButton(
    onPressed: confirmButtonPressed,
    child: Container(
      height: 30,
      width: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child: const Center(
        child: Text(
          "Update",
          style: TextStyle(color: AppColors.black),
        ),
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    alignment: Alignment.bottomCenter,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    ),
    backgroundColor: Colors.grey.shade300,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [CommonText(text: "Update Available")],
    ),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content,
          style: const TextStyle(fontSize: 16, color: AppColors.black),
        )
      ],
    ),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

dynamic loadingAlertDialog(BuildContext context, {required Widget child}) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
      alignment: Alignment.center,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      backgroundColor: Colors.transparent,
      content: child);

  // show the dialog
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

locationSet(BuildContext context) {
  var media = MediaQuery.of(context).size;

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      // backgroundColor: Colors.grey.shade300,
      content: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonText(
                text: "Set your location",
                fontSize: AppFontSize.twenty,
                fontWeight: FontWeight.bold,
              ),
              SvgPicture.asset(
                "assets/svgs/24.svg",
                height: 100,
              ),
              CommonText(
                text: "exploring services near you",
                fontSize: AppFontSize.sixteen,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                  Get.to(()=>Enquiry());
                },
                child: Container(
                  width: media.width,
                  margin: const EdgeInsets.all(15.0),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColors.primary,
                    gradient: const LinearGradient(
                        colors: [AppColors.primary, AppColors.gradient],
                        begin: Alignment.topRight,
                        end: Alignment.topLeft),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.white,
                        ),
                        SizedBox(
                          width: media.width * 0.01,
                        ),
                        CommonText(
                          text: "Your current location",
                          fontColor: AppColors.white,
                          fontSize: AppFontSize.twenty,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: media.width,
                  margin:
                      const EdgeInsets.only(bottom: 15.0, right: 15, left: 15),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.white,
                      border: Border.all(color: AppColors.grey)
                      // gradient: const LinearGradient(
                      //     colors: [AppColors.primary, AppColors.gradient],
                      //     begin: Alignment.topRight,
                      //     end: Alignment.topLeft),
                      ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: AppColors.black,
                        ),
                        SizedBox(
                          width: media.width * 0.01,
                        ),
                        CommonText(
                          text: "Some other location",
                          fontColor: AppColors.black,
                          fontSize: AppFontSize.twenty,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CommonText(
                text:
                    "We only access your location while you are using\nthe app to improve your experience",
                fontSize: AppFontSize.fourteen,
                fontColor: AppColors.black.withOpacity(.4),
                textAlign: TextAlign.center,
              ),
              Container(
                width: media.width,
                height: 100,
                margin: EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(.7),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.zeebiz.com/sites/default/files/styles/zeebiz_850x478/public/2021/09/27/160399-flipkar-saleflipkar-twitter.jpg?itok=u0Yll_bl")),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.grey.withOpacity(.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0.2, 0.2))
                    ]),
              ),
            ],
          ),
          Positioned(
              right: 0,
              child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(Icons.cancel_outlined)))
        ],
      ));

  // show the dialog
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
