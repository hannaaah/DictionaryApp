import 'dart:async';

import 'package:dictionary/pages/home.dart';
import 'package:dictionary/themes/themes.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.bg,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset("assets/images/d1.png")),
        ));
  }
}
