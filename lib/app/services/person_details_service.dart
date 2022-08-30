import 'package:fleetime/app/common/contant.dart';
import 'package:fleetime/app/models/person_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PersonDetailsService {
  final httpClient = http.Client();
  final apiUrl = '$baseUrl/3/person/${Get.arguments}?api_key=$apiKey';

  Future<PersonDetails> fetchPersonDetails(int personId) async {
    final response = await httpClient.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      debugPrint(data.toString());
      return PersonDetails.fromJson(data);
    } else {
      Get.snackbar(
        'Error',
        'Failed to load data',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

      throw Exception('Failed to load data');
    }
  }
}
