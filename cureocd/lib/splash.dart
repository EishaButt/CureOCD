import 'package:flutter/material.dart';
import 'dart:async';
// ignore: import_of_legacy_library_into_null_safe
import 'package:lottie/lottie.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'introduction_animation/introduction_animation_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = const Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const IntroductionAnimationScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const SizedBox(height: 80),
          Image.asset(
            'assets/cureocd_logo.png',
            fit: BoxFit.contain,
            height: 60,
          ),
          const SizedBox(height: 60),
          Center(
              child: SizedBox(
            height: 80,
            child: Lottie.asset('assets/lf20_Stt1R6.json'),
          )),
        ],
      ),
    );
  }
}
