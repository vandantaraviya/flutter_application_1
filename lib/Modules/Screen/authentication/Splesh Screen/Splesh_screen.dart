import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes/routes.dart';
import 'package:flutter_application_1/generated/assets.dart';
import 'package:get/get.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () => Get.offAllNamed(Routes.onBoarding));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Assets.assetsSplashIcon),
      ),
    );
  }
}
