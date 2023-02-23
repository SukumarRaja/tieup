import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth.dart';

class MainController extends GetxController {
  static MainController get to => Get.put(MainController());

  final _pageIndex = 2.obs;

  get pageIndex => _pageIndex.value;

  set pageIndex(value) {
    _pageIndex.value = value;
  }

  final _chooseLanguage = "".obs;

  get chooseLanguage => _chooseLanguage.value;

  set chooseLanguage(value) {
    _chooseLanguage.value = value;
  }

  final _languageDirection = "".obs;

  get languageDirection => _languageDirection.value;

  set languageDirection(value) {
    _languageDirection.value = value;
  }

  final _internet = false.obs;

  get internet => _internet.value;

  set internet(value) {
    _internet.value = value;
  }

  setSelectedLanguageToLocalDevice({required language}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("chooseLanguage", language);
    var lang = preferences.getString('language');
    debugPrint("selected language is $lang");
    // await Get.to(() => const LoginPage());
    // return lang;
  }

  setSelectedLanguageDirectionLocalDevice({required direction}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("languageDirection", direction);
    var language = preferences.getString('language');
    debugPrint("selected languageDirection is $language");
    // await Get.to(() => const LoginPage());
    return language;
  }

  checkInternetConnection() async {
    Connectivity().onConnectivityChanged.listen((connectionState) {
      if (connectionState == ConnectivityResult.mobile) {
        debugPrint("connection state is $connectionState");
        internet = true;
      } else if (connectionState == ConnectivityResult.wifi) {
        internet = true;
      } else if (connectionState == ConnectivityResult.none) {
        debugPrint("connection state is $connectionState");
        internet = false;
      } else {
        internet = false;
      }
    });
  }

  checkConnectivity() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      internet = false;
    } else {
      internet = true;
    }
  }

  checkInitialData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    dynamic result;
    var connectivityResult = await (Connectivity().checkConnectivity());
    var onBoarding = await AuthController.to.checkOnBoarding();
    if (connectivityResult == ConnectivityResult.none) {
      internet = false;
    } else {
      internet = true;
    }
    try {
      if (pref.containsKey('chooseLanguage')) {
        chooseLanguage = pref.getString('chooseLanguage');
        languageDirection = pref.getString('languageDirection');
        debugPrint("choose language is $chooseLanguage");
        debugPrint("language direction is $chooseLanguage");

        if (chooseLanguage != null) {
          if (onBoarding == false) {
            if (pref.containsKey('token')) {
              debugPrint("token is ${pref.containsKey('token')}");
              var token = pref.getString('token');
              if (token != null) {
                result = "token";
              } else {
                result = "noToken";
              }
            } else {
              result = "noToken";
            }
          } else {
            result = "onBoarding";
          }
        } else {
          result = "noToken";
        }
      } else {
        result = "noLanguageChoose";
      }
    } catch (e) {
      if (e is SocketException) {
        result = 'no internet';
        internet = false;
      }
    }
    return result;
  }
}
