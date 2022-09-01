import 'dart:convert';

import 'package:fleetime/app/common/contant.dart';
import 'package:fleetime/app/models/search.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SearchServices {
  final httpClient = http.Client();

  Future<Search> searchMovie(String movieName) async {
    final apiUrl =
        '$baseUrl/3/search/movie?api_key=$apiKey&language=en-US&query=$movieName&page=1&include_adult=false';

    final response = await httpClient.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      debugPrint(data.toString());
      return Search.fromJson(data);
    } else {
      throw Exception('Failed to load post');
    }
  }
}
