import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/dash_board.dart';
import '../../../controller/main.dart';
import '../../../controller/slider.dart';
import '../../themes/colors.dart';
import 'demo_main.dart';
import 'home.dart';

class HomeMain extends StatelessWidget {
  HomeMain({Key? key}) : super(key: key);
  final List<Widget> pages = [
    Center(child: Text("Profile")),
    Center(child: Text("Cart")),
    Home(),
    Center(child: Text("Fashion")),
    Center(child: Text("Settings")),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DashboardController(),
        initState: (_) {
          // DashboardController.to.getProfile();
          // Future.delayed(const Duration(seconds: 2), () {
          //   DashboardController.to.getInitialData();
          // });
          SliderController.to.getImageSliders();
        },
        builder: (_) {
          return Scaffold(
            // bottomNavigationBar: Obx(
            //   () => BottomNavigationBar(
            //     currentIndex: MainController.to.pageIndex,
            //     type: BottomNavigationBarType.fixed,
            //     unselectedItemColor: AppColors.grey,
            //     elevation: 25,
            //     selectedItemColor: AppColors.gradient,
            //     showUnselectedLabels: false,
            //     showSelectedLabels: true,
            //     selectedLabelStyle: const TextStyle(fontFamily: "Oswald"),
            //     selectedIconTheme:
            //         const IconThemeData(color: AppColors.gradient),
            //     unselectedIconTheme: const IconThemeData(color: AppColors.grey),
            //     onTap: (data) {
            //       MainController.to.pageIndex = data;
            //     },
            //     items: [
            //       BottomNavigationBarItem(
            //           icon: buildDecoratedIcon(icon: Icons.home_filled),
            //           label: "1"),
            //       BottomNavigationBarItem(
            //           icon: buildDecoratedIcon(icon: Icons.home_filled),
            //           label: "2"),
            //       BottomNavigationBarItem(
            //           icon: buildDecoratedIcon(icon: Icons.home_filled),
            //           label: "Home"),
            //       BottomNavigationBarItem(
            //           icon: buildDecoratedIcon(icon: Icons.home_filled),
            //           label: "Demo"),
            //       BottomNavigationBarItem(
            //           icon: buildDecoratedIcon(icon: Icons.home_filled),
            //           label: "5"),
            //     ],
            //   ),
            // ),\

            // bottomNavigationBar: Obx(() => CurvedNavigationBar(
            //       // key: _bottomNavigationKey,
            //       index: MainController.to.pageIndex,
            //       height: 50.0,
            //       items: <Widget>[
            //         buildDecoratedIcon(icon: Icons.person),
            //         buildDecoratedIcon(icon: Icons.shopping_cart),
            //         buildDecoratedIcon(icon: Icons.home_filled),
            //         buildDecoratedIcon(icon: Icons.local_offer),
            //         buildDecoratedIcon(icon: Icons.settings),
            //       ],
            //       color: Colors.white,
            //       buttonBackgroundColor: Colors.white,
            //       backgroundColor: AppColors.black.withOpacity(.02),
            //       animationCurve: Curves.easeInOut,
            //       animationDuration: const Duration(milliseconds: 600),
            //       onTap: (index) {
            //         MainController.to.pageIndex = index;
            //       },
            //       letIndexChange: (index) => true,
            //     )),
            body: Obx(() => pages[MainController.to.pageIndex]),
          );
        });
  }

  DecoratedIcon buildDecoratedIcon(
      {double size = 35.0, required IconData icon}) {
    return DecoratedIcon(
      icon,
      color: AppColors.primary,
      size: size,
      shadows: const [
        BoxShadow(
            blurRadius: 1.0, color: AppColors.gradient, spreadRadius: 2.0),
      ],
    );
  }
}
