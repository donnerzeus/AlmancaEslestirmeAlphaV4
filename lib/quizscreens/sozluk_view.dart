import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

String url = "https://owlbot.info/api/v4/dictionary/";
String token = "495aa0f9c238ee560ea97f1096dbb07dc6338cce";

 StreamController streamController;

searchText(String word) async {
  if (word == null || word.length == 0) {
    streamController.add(null);
    return;
  }
  streamController.add("waiting");
  Response response = await get(Uri.parse(url + word.trim()),
      headers: {"Authorization": "Token " + token});
  streamController.add(json.decode(response.body));
}