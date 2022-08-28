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

  void fetchTrending() {
    isTrendingLoading.value = true;

    Future.delayed(
      const Duration(seconds: 1),
      () async {
        final api = await TrendingServices().fetchTrending();

        final listResult = api.results;

        trendingMoviews = listResult!;

        isTrendingLoading.value = false;
      },
    );
  }

  void fetchNowPlaying() {
    Future.delayed(
      const Duration(seconds: 1),
      () async {
        final api = await NowPlayingServices().fetchNowPlaying();
        final listResult = api.results;
        nowPlayingMovies = listResult!;
      },
    );
  }

  List trendingMoviews = <Results>[].obs;

  List nowPlayingMovies = <Results>[].obs;
}
