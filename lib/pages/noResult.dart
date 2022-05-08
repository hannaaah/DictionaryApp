import 'package:dictionary/widgets/retry.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/themes.dart';

class NoResults extends StatelessWidget {
  const NoResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.bg,
        body: Center(
          child: Column(children: [
            const SizedBox(
              height: 230,
            ),
            Image.asset("assets/images/oops.png"),
            const SizedBox(
              height: 50,
            ),
            Text(
              "OOPS...!",
              style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: Color(0xffFFFFFF), fontSize: 23)),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "No matches found!",
              style: Themes.subhead,
            ),
            Text("Try checking the spelling", style: Themes.subhead),
            const SizedBox(height: 50),
            const RetryButton(),
          ]),
        ));
  }
}
