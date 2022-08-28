import 'package:fleetime/app/models/trending.dart';
import 'package:fleetime/app/services/trending_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final isTrendingLoading = false.obs;

  @override
  void onInit() {
    fetchTrending();
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

  List trendingMoviews = <Results>[];
}
