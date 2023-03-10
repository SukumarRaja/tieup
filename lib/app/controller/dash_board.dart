// ignore_for_file: unrelated_type_equality_checks

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../ui/widgets/common_print.dart';
import 'auth.dart';
import 'main.dart';

class DashboardController extends GetxController {
  static DashboardController get to => Get.put(DashboardController());

  // final repository = ProfileRepository();
  // final dashboardRepository = DashboardRepository();

  final _getProfileLoading = false.obs;

  get getProfileLoading => _getProfileLoading.value;

  set getProfileLoading(value) {
    _getProfileLoading.value = value;
  }

  final _patientName = "".obs;

  get patientName => _patientName.value;

  set patientName(value) {
    _patientName.value = value;
  }

  final _patientEmail = "".obs;

  get patientEmail => _patientEmail.value;

  set patientEmail(value) {
    _patientEmail.value = value;
  }

  var patientPhone = "";

  // final _profileDetails = Data().obs;
  //
  // get profileDetails => _profileDetails.value;
  //
  // set profileDetails(value) {
  //   _profileDetails.value = value;
  // }

  final _getDoctorsLoading = false.obs;

  get getDoctorsLoading => _getDoctorsLoading.value;

  set getDoctorsLoading(value) {
    _getDoctorsLoading.value = value;
  }



  final _isDoctorListEmpty = false.obs;

  get isDoctorListEmpty => _isDoctorListEmpty.value;

  set isDoctorListEmpty(value) {
    _isDoctorListEmpty.value = value;
  }

  final _bloodGroup = "".obs;

  get bloodGroup => _bloodGroup.value;

  set bloodGroup(value) {
    _bloodGroup.value = value;
  }

  getInitialData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    patientName = pref.getString('name')!;
    patientEmail = pref.getString('email')!;
    patientPhone = pref.getString('phone')!;
    update();
  }

  getProfile() async {
    // getProfileLoading = true;
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // var id = preferences.getString('patientId');
    // try {
    //   var res = await repository.getProfile(id: id);
    //   if (statusCode == 200) {
    //     if (res.status == "200") {
    //       getProfileLoading = false;
    //       if (res.data == null || res.data == "") {
    //         commonPrint(status: res.status, msg: "No data or id wrong");
    //       } else {
    //         profileDetails = res.data;
    //         bloodGroup =
    //             res.data!.bloodgroup ?? "N/A";
    //         commonPrint(
    //             status: res.status,
    //             msg: "Profile get successfully with data : ${res.data}");
    //         Map storedData = {
    //           "name": "${res.data!.name}",
    //           "email": "${res.data!.email}",
    //           "phone": "${res.data!.phone}",
    //         };
    //         AuthController.to.storeLocalDevice(body: storedData);
    //       }
    //     } else {
    //       getProfileLoading = false;
    //       commonPrint(status: "${res.status}", msg: "UnProcessable Data");
    //     }
    //   } else {
    //     commonPrint(
    //         status: "${res.status}", msg: "Error from server on get profile");
    //     getProfileLoading = false;
    //   }
    // } catch (e) {
    //   commonPrint(
    //       status: "500", msg: "Profile get error due to wrong credentials");
    //   getProfileLoading = false;
    // }
  }

}
