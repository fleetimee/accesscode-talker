import 'dart:convert';

import 'package:fleetime/app/common/contant.dart';
import 'package:fleetime/app/models/trending.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class TrendingServices {
  final httpClient = http.Client();
  final apiUrl = '$baseUrl?api_key=$apiKey';

  Future<TrendingMovie> fetchTrending() async {
    final response = await httpClient.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      debugPrint(data.toString());
      return TrendingMovie.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
