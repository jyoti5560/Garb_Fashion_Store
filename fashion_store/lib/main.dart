import 'package:fashion_store/screens/splash_screen/splash_screen.dart';
import 'package:fashion_store/utils/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: AppColors.colorBlue),
          unselectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelStyle: TextStyle(color: AppColors.colorBlue),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.colorBlue,
        ),
      ),
      home: SplashScreen(),
    );
  }
}