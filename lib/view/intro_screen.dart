import 'dart:async';

import 'package:edufly/view/splash_screen.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SplashScreen(),
            )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xff02F993), Color(0xff1132D9)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: Center(
          child: Text(
            "edufly",
            style: TextStyle(
                color: Colors.white,
                fontSize: height * 0.070,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
