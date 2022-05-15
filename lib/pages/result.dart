import 'package:dictionary/themes/themes.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String word;
  Result({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.bg,
        appBar: AppBar(
          backgroundColor: Themes.bg,
          elevation: 0,
          leading: SizedBox(
            width: 60,
            height: 70,
            child: GestureDetector(
              onTap: (() {
                Navigator.pop(context);
              }),
              child: Padding(
                padding: const EdgeInsets.all(23.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Themes.green,
                  size: 22,
                ),
              ),
            ),
          ),
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 18, bottom: 49, left: 24, right: 35),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(word, style: Themes.word(40)),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(children: [
                        Text("halo", style: Themes.greenhead),
                        const SizedBox(width: 20),
                        GestureDetector(
                            onTap: (() {}),
                            child: Image.asset("assets/images/voice.png"))
                      ]),
                      const SizedBox(
                        height: 22,
                      ),
                      meaning("NOUN", "An utterance of 'hello'; a greeting",
                          "She was getting polite nods and hellos from people."),
                      meaning("VERB", "Say or shout 'hello'.",
                          "I pressed the phone button and helloed."),
                      Text("ORIGIN", style: Themes.whitehead),
                      const SizedBox(
                        height: 9,
                      ),
                      Text(
                          "Early 19th century; A variant of earlier hollo; related to holla.",
                          style: Themes.greentext),
                    ])),
          ),
        ));
  }
}

Column meaning(String title, String def, String eg) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: Themes.whitehead),
      const SizedBox(
        height: 9,
      ),
      Text("DEFINITION", style: Themes.greenhead),
      const SizedBox(
        height: 7,
      ),
      Text(def, style: Themes.greentext),
      const SizedBox(
        height: 14,
      ),
      Text(
        "EXAMPLE",
        style: Themes.greenhead,
      ),
      const SizedBox(
        height: 7,
      ),
      Text(eg, style: Themes.greentext),
      Divider(
        color: Themes.green,
        thickness: 0.4,
        height: 60,
      ),
      const SizedBox(
        height: 14,
      ),
    ],
  );
}
