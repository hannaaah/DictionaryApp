import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import '../pages/home.dart';
import 'package:http/http.dart' as http;

class Controller {
  static Future<void> checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none)
      Home.nonet = true;
    else
      Home.nonet = false;
  }

  static Future<void> checkResult(String word) async {
    final response = await http.get(
        Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/' + word));
    if (response.statusCode == 200) {
      List<dynamic> map = json.decode(response.body).cast<List<dynamic>>();
      print('Success');
      // print(map[0]["phonetic"]);
      // print(map[0]["meanings"][0]["partOfSpeech"]);
      Home.notexists = false;
    } else {
      Home.notexists = true;
      print('Failed to load album');
    }
  }
}
