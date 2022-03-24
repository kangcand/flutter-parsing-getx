import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:parsingujikom/screens/home.dart';
import 'package:parsingujikom/screens/user_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:parsingujikom/screens/artikel_screen.dart';

import 'controller_bindings.dart';
import 'package:splash_screen_view/splash_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(
        navigateRoute: const HomeScreen(),
        duration: 3000,
        imageSize: 130,
        imageSrc: "assets/img/logo.png",
        backgroundColor: Colors.white,
      ),
    );
  }
}
