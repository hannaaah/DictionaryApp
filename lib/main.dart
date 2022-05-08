import 'dart:ui';

import 'package:dictionary/pages/home.dart';
import 'package:dictionary/pages/noInternet.dart';
import 'package:dictionary/pages/noResult.dart';
import 'package:dictionary/pages/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}
