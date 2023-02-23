import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'app/controller/main.dart';
import 'app/routes/routes.dart';
import 'app/ui/themes/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: AppColors.gradient, // status bar color
  ));
  MainController.to.checkInternetConnection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: AppRoutes.routes,
        // theme: ThemeData(
        //   scaffoldBackgroundColor: AppColors.background,
        //   // textTheme: Theme.of(context).textTheme.apply(
        //   //   bodyColor: kPrimaryColor,
        //   //   fontFamily: 'Montserrat',
        //   // ),
        // ),
      ),
    );
  }
}
