// ignore_for_file: avoid_print

import 'package:fleetime/app/models/movie_details.dart';
import 'package:fleetime/app/services/details_movie_services.dart';
import 'package:get/get.dart';

class DetailMovieController extends GetxController {
  @override
  void onInit() {
    fetchDetails();
    super.onInit();
  }

  var details = MovieDetail();

  void fetchDetails() {
    final movieId = Get.arguments;
    final api = MovieDetailsService();
    api.fetchMovieDetails(movieId).then((value) {
      details = value;
      update();
    });
  }
}
