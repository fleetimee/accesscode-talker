import 'package:fleetime/app/common/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Fleetime',
          style: TextStyle(
            color: blueBanget,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Get.toNamed('/search');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Now Showing',
                    style: TextStyle(
                      fontSize: 35,
                      color: blueBanget,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      controller.fetchTrending();
                    },
                    child: const Text("See More"),
                  ),
                ],
              ),
            ),
            nowShowing(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 35,
                      color: blueBanget,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.blueGrey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
                    onPressed: () {
                      controller.fetchTrending();
                    },
                    child: const Text("See More"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            popular(),
          ],
        ),
      ),
    );
  }

  Expanded nowShowing() {
    return Expanded(
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadowColor: Colors.black,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500/${controller.trendingMoviews[index].posterPath}',
                        fit: BoxFit.cover,
                        height: 250,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  controller.trendingMoviews[index].title,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.star,
                      color: ratingBintang,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '${controller.trendingMoviews[index].voteAverage.toStringAsFixed(1)} / 10 IMDb',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded popular() {
    return Expanded(
      child: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500),
                      ),
                      shadowColor: Colors.black,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500/${controller.nowPlayingMovies[index].posterPath}',
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            controller.nowPlayingMovies[index].title,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // IMDB Rating
                          const Icon(
                            Icons.star,
                            color: ratingBintang,
                            size: 30,
                          ),
                          // Runtime
                          Text(
                            DateFormat('dd MMMM yyyy').format(
                              DateTime.parse(controller
                                  .nowPlayingMovies[index].releaseDate
                                  .toString()),
                            ),
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
