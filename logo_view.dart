import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app_new/welcome_splash_1.dart';
import 'package:get/get.dart';

class LogoSplashView extends StatelessWidget {
  const LogoSplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.to(WelcomeSplash1());
    });
    return Scaffold(
      body: Center(
          child: Image.asset(
        "assets/images/logobackground.png",
        scale: 2,
      )),
    );
  }
}
