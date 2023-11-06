import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/models/sourceResponse.dart';

class ApiManager {
  static Future<SourceResponse> getSources() async {
    Uri url = Uri.https(
      "newsapi.org",
      "/v2/top-headlines/sources",
    );
    Response response = await http.get(
      url,
      headers: {
        "X-Api-Key": "ee4d1421c7604d39a6d1f30495231452",
      },
    );
    var jsonData = jsonDecode(response.body);
    SourceResponse data = SourceResponse.fromJson(jsonData);
    return data;
  }
}
