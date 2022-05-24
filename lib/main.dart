import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing/views/pages/detail_page.dart';
import 'package:healing/views/pages/home_page/home_page.dart';
import 'package:healing/views/pages/sign_up.dart';
import 'package:healing/views/splash/splash_screen.dart';
import 'package:healing/views/splash/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healing Time',
      home: SplashScreen(),
      getPages: [
        GetPage(name: '/WelcomePage', page: () => WelcomePage()),
        GetPage(name: '/HomePage', page: () => HomePage()),
        GetPage(name: '/SignUp', page: () => SignUp()),
        GetPage(name: '/DetailPage', page: () => DetailPage())
      ],
    );
  }
}
