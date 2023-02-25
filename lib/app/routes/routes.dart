import 'package:get/get.dart';
import '../ui/screens/home/main.dart';
import '../ui/screens/initial.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: "/",
      page: () =>  HomeMain(),
      transition: Transition.zoom,
    ),
  ];
}
