import 'package:fleetime/app/models/search.dart';
import 'package:fleetime/app/services/search_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {
  final searchInput = TextEditingController();

  // var fetchModel = <Search>[].obs;

  // Future<List<Search>> getSearchResult(String movieName) async {
  //   // final apiUrl =
  //   //     '$baseUrl/3/search/movie?api_key=$apiKey&language=en-US&query=$movieName&page=1&include_adult=false';
  //   // final httpClient = http.Client();

  //   // final response = await httpClient.get(Uri.parse(apiUrl));

  //   // if (response.statusCode == 200) {
  //   //   Iterable list = json.decode(response.body)['results'];
  //   //   for (var item in list) {
  //   //     fetchModel.add(item);
  //   //   }
  //   // } else {
  //   //   throw Exception('Failed to load data');
  //   // }

  //   final apiUrl =
  //       '$baseUrl/3/search/movie?api_key=$apiKey&language=en-US&query=$movieName&page=1&include_adult=false';
  //   final httpClient = http.Client();

  //   try {
  //     final response = await httpClient.get(Uri.parse(apiUrl));
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> data = jsonDecode(response.body);
  //       debugPrint(data.toString());
  //       final result = data['results']
  //           .map<Search>((json) => Search.fromJson(json))
  //           .toList();

  //       fetchModel = result;
  //     }

  //     return fetchModel;
  //   } catch (e) {
  //     throw Exception('Failed to load data');
  //   }
  // }

  Search searchModel = Search();

  final isLoading = false.obs;
  final movieName = TextEditingController();

  void search() async {
    isLoading.value = true;

    final api = SearchServices();
    final listResult = await api.searchMovie(movieName.text);
    final hasil = listResult.results;

    debugPrint(hasil.toString());

    searchResult = hasil!;

    isLoading.value = false;

    update();
  }

  List searchResult = <Result>[].obs;
}
