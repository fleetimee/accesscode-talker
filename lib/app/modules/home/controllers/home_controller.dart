import 'package:fleetime/app/models/search.dart';
import 'package:fleetime/app/models/trending.dart';
import 'package:fleetime/app/services/now_playing_services,.dart';
import 'package:fleetime/app/services/trending_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isTrendingLoading = false.obs;

  @override
  void onInit() {
    fetchTrending();
    fetchNowPlaying();
    super.onInit();
  }

  final count = 0.obs;

  void increment() => count.value++;

  void fetchTrending() async {
    isTrendingLoading.value = true;

    final api = await TrendingServices().fetchTrending();

    final listResult = api.results;

    trendingMoviews = listResult!;

    isTrendingLoading.value = false;

    update();
  }

  void fetchNowPlaying() async {
    final api = await NowPlayingServices().fetchNowPlaying();
    final listResult = api.results;
    nowPlayingMovies = listResult!;

    update();
  }

  // void search(String movieName) async {
  //   final api = await SearchServices().searchMovie(movieName);
  //   final listResult = api;
  //   searchResult = listResult;
  //   update();
  // }

  List trendingMoviews = <Results>[].obs;

  List nowPlayingMovies = <Results>[].obs;

  List searchResult = <Search>[].obs;

  List<Search> fetchModel = [];
}
