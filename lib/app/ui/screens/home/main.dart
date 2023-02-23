import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/dash_board.dart';
import '../../../controller/main.dart';
import '../../../controller/slider.dart';
import '../../themes/colors.dart';
import 'home.dart';

class HomeMain extends StatelessWidget {
  HomeMain({Key? key}) : super(key: key);
  final List<Widget> pages = [
    Center(child: Text("page 1")),
    Text("page 2"),
    Home(),
    Text("page 3"),
    Text("page 5"),
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
            bottomNavigationBar: Obx(
              () => BottomNavigationBar(
                currentIndex: MainController.to.pageIndex,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: AppColors.grey,
                elevation: 25,
                selectedItemColor: AppColors.gradient,
                showUnselectedLabels: false,
                showSelectedLabels: true,
                selectedLabelStyle: const TextStyle(fontFamily: "Oswald"),
                selectedIconTheme:
                    const IconThemeData(color: AppColors.gradient),
                unselectedIconTheme: const IconThemeData(color: AppColors.grey),
                onTap: (data) {
                  MainController.to.pageIndex = data;
                },
                items: [
                  BottomNavigationBarItem(
                      icon: buildDecoratedIcon(icon: Icons.home_filled),
                      label: "1"),
                  BottomNavigationBarItem(
                      icon: buildDecoratedIcon(icon: Icons.home_filled),
                      label: "2"),
                  BottomNavigationBarItem(
                      icon: buildDecoratedIcon(icon: Icons.home_filled),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: buildDecoratedIcon(icon: Icons.home_filled),
                      label: "4"),
                  BottomNavigationBarItem(
                      icon: buildDecoratedIcon(icon: Icons.home_filled),
                      label: "5"),
                ],
              ),
            ),
            body: Obx(() => pages[MainController.to.pageIndex]),
          );
        });
  }

  DecoratedIcon buildDecoratedIcon(
      {double size = 35.0, required IconData icon}) {
    return DecoratedIcon(
      icon,
      color: AppColors.secondary,
      size: size,
      shadows: const [
        BoxShadow(
            blurRadius: 10.0, color: AppColors.gradient, spreadRadius: 5.0),
      ],
    );
  }
}
