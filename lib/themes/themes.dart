import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static Color green = const Color(0xff99B999);
  static Color bg = const Color(0xff27363B);
  static TextStyle subhead = GoogleFonts.poppins(
      textStyle: const TextStyle(color: Color(0xff869EA5), fontSize: 16));
  static TextStyle buttontext = GoogleFonts.poppins(
      textStyle: const TextStyle(color: Colors.white, fontSize: 18));

  static TextStyle whitehead = GoogleFonts.poppins(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle greenhead = GoogleFonts.poppins(
      textStyle:
          TextStyle(color: green, fontSize: 16, fontWeight: FontWeight.w400));
  static TextStyle greentext = GoogleFonts.poppins(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 182, 189, 182), fontSize: 15));
}
