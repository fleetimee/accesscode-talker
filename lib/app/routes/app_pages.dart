import 'package:get/get.dart';

import '../modules/detail_movie/bindings/detail_movie_binding.dart';
import '../modules/detail_movie/views/detail_movie_view.dart';
import '../modules/detail_person/bindings/detail_person_binding.dart';
import '../modules/detail_person/views/detail_person_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/search_page/bindings/search_page_binding.dart';
import '../modules/search_page/views/search_page_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.DETAIL_MOVIE,
      page: () => DetailMovieView(),
      binding: DetailMovieBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.DETAIL_PERSON,
      page: () => DetailPersonView(),
      binding: DetailPersonBinding(),
      transition: Transition.cupertino,
    ),
    GetPage(
      name: _Paths.SEARCH_PAGE,
      page: () => const SearchPageView(),
      binding: SearchPageBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
