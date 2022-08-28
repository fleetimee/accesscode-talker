import 'package:get/get.dart';

import '../controllers/detail_movie_controller.dart';

class DetailMovieBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailMovieController>(
      () => DetailMovieController(),
    );
  }
}
