import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:inventaris/controller.bindings.dart';
import 'package:inventaris/home.dart';
import 'package:inventaris/main_screen.dart';
import 'package:inventaris/screens/supplier_screen.dart';
import 'package:inventaris/screens/user_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

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
        navigateRoute: MainScreen(),
        duration: 4800,
        imageSize: 300,
        imageSrc: "assets/img/logo.png",
        text: '',
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        colors: [
          Colors.blue,
          Colors.blue,
          Colors.white,
          Colors.blue,
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
