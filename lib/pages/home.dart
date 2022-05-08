import 'package:dictionary/pages/noInternet.dart';
import 'package:dictionary/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'result.dart';

class Home extends StatelessWidget {
  static bool exists = true;
  static bool nonet = false;

  final TextEditingController word = TextEditingController();
  Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Themes.bg,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 150),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dictionary",
                style: GoogleFonts.notoSerifDisplay(
                    textStyle:
                        const TextStyle(color: Colors.white, fontSize: 50)),
              ),
              const SizedBox(height: 24),
              Text(" Search",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Themes.green, fontSize: 22))),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Themes.green)),
                child: TextField(
                  controller: word,
                  cursorColor: Themes.green,
                  cursorWidth: 1.5,
                  textCapitalization: TextCapitalization.sentences,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 215, 228, 215),
                          fontSize: 20)),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(12),
                      suffixIcon: GestureDetector(
                        onTap: () async {
                          await _checkConnectivityState();
                          if (Home.nonet) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NoInternet()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Result(
                                          word: word.text,
                                        )));
                          }
                        },
                        child: Icon(
                          Icons.search,
                          color: Themes.green,
                          size: 27,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
        Positioned(
            bottom: 0, left: 0, child: Image.asset("assets/images/d.png"))
      ]),
    );
  }
}

Future<void> _checkConnectivityState() async {
  final ConnectivityResult result = await Connectivity().checkConnectivity();
  if (result == ConnectivityResult.none)
    Home.nonet = true;
  else
    Home.nonet = false;
}
