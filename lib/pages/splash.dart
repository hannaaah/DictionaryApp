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
      body: Center(
        child: Text(
          "Dictionary",
          style: Themes.word(50),
        ),
      ),
    );
  }
}
