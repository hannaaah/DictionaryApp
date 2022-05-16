import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dictionary/pages/result.dart';
import '../pages/home.dart';
import 'package:http/http.dart' as http;

class Controller {
  static Future<void> checkConnectivityState() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      Home.nonet = true;
    } else {
      Home.nonet = false;
    }
  }

  static Future<void> checkResult(String word) async {
    http.Response response = await http.get(
        Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/' + word));
    if (response.statusCode == 200) {
      Result.model = json.decode(response.body);
      Home.notexists = false;
      print(Result.model);
      print(Result.model[0]["phonetic"]);
      print(Result.model[0]["meanings"][0]["partOfSpeech"]);
    } else {
      Home.notexists = true;
    }
  }
}
