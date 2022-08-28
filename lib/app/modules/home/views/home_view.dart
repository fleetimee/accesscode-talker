import 'package:fleetime/app/common/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
                children: const [
                  Text(
                    'Now Showing',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GetBuilder<HomeController>(
                init: HomeController(),
                builder: (_) => ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        shadowColor: Colors.black,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500/${controller.trendingMoviews[index].posterPath}',
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),

                      Text(
                        controller.trendingMoviews[index].title,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // IMDB Rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.star,
                            color: ratingBintang,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '${controller.trendingMoviews[index].voteAverage} / 10',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 20,
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
              height: 16.0,
            ),
            Expanded(
              child: GetBuilder<HomeController>(
                init: HomeController(),
                builder: (_) => ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        shadowColor: Colors.black,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500/${controller.trendingMoviews[index].posterPath}',
                          fit: BoxFit.cover,
                          height: 300,
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        controller.trendingMoviews[index].title,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // IMDB Rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.star,
                            color: ratingBintang,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '${controller.trendingMoviews[index].voteAverage} / 10',
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
