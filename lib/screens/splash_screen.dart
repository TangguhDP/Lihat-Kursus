import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lihat_kursus/constants.dart';
import 'package:lihat_kursus/screens/home_screen.dart';
import 'package:lihat_kursus/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static String id = "splash_screen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = ColorTween(begin: kPrimaryColour, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        startSplashScreen();
      }
//        Navigator.pushNamed(context, LoginScreen.id);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<dynamic> startSplashScreen() async {
    var duration = Duration(seconds: 1);
    return Timer(duration, () {
      Navigator.pushNamed(context, LoginScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Center(
        child: Text(
          'LK',
          style: kTextStyleFredoka,
        ),
      ),
    );
  }
}
