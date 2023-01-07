import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pingpongapp/screen/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
          Container(
            color: Color(0xffF5F5DC),
          ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/pingsplash.png"),
                  fit: BoxFit.contain)),
        ),
      ],
    );
  }
}
