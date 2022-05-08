import 'package:dictionary/widgets/retry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/themes.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.bg,
        body: Column(children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset("assets/images/nonet.png"),
          const SizedBox(
            height: 50,
          ),
          Text(
            "No Internet Connection",
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(color: Color(0xffFFFFFF), fontSize: 23)),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Please check your internet connection",
            style: Themes.subhead,
          ),
          Text("It looks like you are not connected ", style: Themes.subhead),
          Text(
            "to the internet.",
            style: Themes.subhead,
          ),
          const SizedBox(height: 50),
          const RetryButton(),
        ]));
  }
}
