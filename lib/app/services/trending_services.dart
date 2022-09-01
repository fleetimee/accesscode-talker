import 'dart:convert';

import 'package:fleetime/app/common/contant.dart';
import 'package:fleetime/app/models/trending.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class TrendingServices {
  final httpClient = http.Client();
  final apiUrl = '$baseUrl/3/trending/movie/week?api_key=$apiKey';
  final paginateTrendingUrl =
      '$baseUrl/3/trending/movie/week?api_key=$apiKey&page=';

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

  Future<TrendingMovie> getPaginateTrending(int page) async {
    final response =
        await httpClient.get(Uri.parse(paginateTrendingUrl + page.toString()));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      debugPrint(data.toString());
      return TrendingMovie.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
