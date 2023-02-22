import 'package:get/get.dart';
import '../ui/screens/initial.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: "/",
      page: () => const Initial(),
      transition: Transition.zoom,
    ),
  ];
}
