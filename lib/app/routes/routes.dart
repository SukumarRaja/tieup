import 'package:get/get.dart';
import '../ui/screens/auth/login.dart';
import '../ui/screens/home/main.dart';
import '../ui/screens/initial.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: "/",
      page: () =>  Login(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: "/homeMain",
      page: () =>  HomeMain(),
      transition: Transition.zoom,
    ),
  ];
}
