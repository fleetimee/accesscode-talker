import 'dart:convert';

import 'package:fleetime/app/common/contant.dart';
import 'package:fleetime/app/models/now_playing.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NowPlayingServices {
  final httpClient = http.Client();
  final apiUrl = '$baseUrl/3/movie/now_playing?api_key=$apiKey';

  Future<NowPlaying> fetchNowPlaying() async {
    final response = await httpClient.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      debugPrint(data.toString());
      return NowPlaying.fromJson(data);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
