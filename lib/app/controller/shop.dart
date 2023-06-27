import 'package:get/get.dart';

class ShopController extends GetxController {
  static ShopController get to => Get.put(ShopController());

  final _isClickViewMore = true.obs;

  get isClickViewMore => _isClickViewMore.value;

  set isClickViewMore(value) {
    _isClickViewMore.value = value;
  }
}
