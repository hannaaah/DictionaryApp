import 'package:dictionary/themes/themes.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  static Divider divider = Divider(
    color: Themes.green,
    thickness: 0.4,
    height: 60,
  );
  static List<dynamic> model = [];

  int noOfPartsOfSpeech = model[0]['meanings'].length;
  String phonetic = model[0]['phonetic'];

  Result({Key? key}) : super(key: key);

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
            physics: const ScrollPhysics(),
            child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 49, left: 24, right: 35),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model[0]['word'], style: Themes.word(40)),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(children: [
                        (Text(model[0]['phonetic'], style: Themes.greenhead)),
                        const SizedBox(width: 20),
                        GestureDetector(
                            onTap: (() {}),
                            child: Image.asset("assets/images/voice.png"))
                      ]),
                      const SizedBox(
                        height: 25,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: noOfPartsOfSpeech,
                        itemBuilder: (context, index) {
                          String title = model[0]['meanings'][index]
                                  ['partOfSpeech']
                              .toString()
                              .toUpperCase();
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title, style: Themes.whitehead),
                              const SizedBox(
                                height: 10,
                              ),
                              // Text("DEFINITION", style: Themes.greenhead),
                              // const SizedBox(
                              //   height: 7,
                              // ),
                              ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: model[0]['meanings'][index]
                                          ['definitions']
                                      .length,
                                  itemBuilder: (context, ind) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            (ind + 1).toString() +
                                                '. ' +
                                                model[0]['meanings'][index]
                                                        ['definitions'][ind]
                                                    ['definition'],
                                            style: Themes.greentext),
                                        const SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    );
                                  }),
                              const SizedBox(
                                height: 20,
                              )
                            ],
                          );
                        },
                      ),
                    ])),
          ),
        ));
  }
}
