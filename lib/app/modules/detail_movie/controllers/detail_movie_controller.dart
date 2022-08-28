import 'package:get/get.dart';
import 'package:tmdb_api/tmdb_api.dart';

class DetailMovieController extends GetxController {
  @override
  void onInit() {
    main(
      Get.arguments,
    );

    super.onInit();
  }

  final tmdbWithCustomLogs = TMDB(
    //TMDB instance
    ApiKeys('4ef9e654e5c362cf3240cf8d623bcfd1', 'apiReadAccessTokenv4'),
    logConfig: const ConfigLogger(
      showLogs: true, //must be true than only all other logs will be shown
      showErrorLogs: true,
    ), //ApiKeys instance with your keys,
  );

  Future<void> main(List<String> args) async {
    //api with out console logs
    final tmdb = TMDB(
        ApiKeys('4ef9e654e5c362cf3240cf8d623bcfd1', 'apiReadAccessTokenv4'));
    print(await tmdb.v3.movies.getPopular());

    //api with showing all console logs
    final tmdbWithLogs = TMDB(
      ApiKeys('Your API KEY', 'apiReadAccessTokenv4'),
      logConfig: const ConfigLogger.showAll(),
    );
    print(await tmdbWithLogs.v3.movies.getPopular());

    //api with showing all console logs
    final tmdbWithCustomLogs = TMDB(
      ApiKeys('Your API KEY', 'apiReadAccessTokenv4'),
      logConfig: const ConfigLogger(
        //must be true than only all other logs will be shown
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    print(await tmdbWithCustomLogs.v3.movies.getPopular());
  }
}
