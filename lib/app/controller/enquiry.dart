import 'package:get/get.dart';

class EnquiryController extends GetxController {
  static EnquiryController get to => Get.put(EnquiryController());

  final _isClickEnquiry = false.obs;

  get isClickEnquiry => _isClickEnquiry.value;

  set isClickEnquiry(value) {
    _isClickEnquiry.value = value;
  }
}
