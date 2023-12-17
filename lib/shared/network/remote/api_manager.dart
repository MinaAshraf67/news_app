import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:news_app/models/news_response.dart';
import 'package:news_app/models/sourceResponse.dart';
import 'package:news_app/shared/components/constants.dart';

class ApiManager {
  static Future<SourceResponse> getSources() async {
    Uri url = Uri.https(
      BASE_URL,
      "/v2/top-headlines/sources",
    );
    Response response = await http.get(
      url,
      headers: {
        "X-Api-Key": apiKey,
      },
    );
    var json = jsonDecode(response.body);
    SourceResponse sourceResponse = SourceResponse.fromJson(json);
    return sourceResponse;
  }

  static Future<NewsResponse> getNewsData(String sourceId) async {
    Uri url = Uri.https(
      BASE_URL,
      "/v2/everything",
      {
        "sources": sourceId,
      },
    );
    Response response = await http.get(
      url,
      headers: {
        "X-Api-Key": apiKey,
      },
    );
    var json = jsonDecode(response.body);
    NewsResponse newsResponse = NewsResponse.fromJson(json);
    return newsResponse;
  }
}
