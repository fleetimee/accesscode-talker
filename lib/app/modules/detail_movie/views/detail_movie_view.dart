import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:fleetime/app/common/style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/detail_movie_controller.dart';

class DetailMovieView extends GetView<DetailMovieController> {
  DetailMovieView({Key? key}) : super(key: key);

  final data = Get.arguments!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                    ),
                    color: Colors.white),
                padding: const EdgeInsets.only(bottom: 10, top: 5),
                width: double.maxFinite,
                // child: Padding(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: 30,
                //   ),
                //   child: Column(
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         crossAxisAlignment: CrossAxisAlignment.end,
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           Expanded(
                //             child: Text(
                //               data.title,
                //               style: const TextStyle(
                //                 color: Colors.black,
                //                 fontSize: 25,
                //                 fontWeight: FontWeight.w700,
                //               ),
                //             ),
                //           ),
                //           const Icon(
                //             Icons.bookmark_add_outlined,
                //             size: 30,
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: FancyShimmerImage(
                imageUrl:
                    'https://image.tmdb.org/t/p/w500/${data.backdropPath}',
                height: 200,
                width: double.maxFinite,
                boxFit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          data.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.bookmark_add_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ratingBintang,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '${data.voteAverage.toStringAsFixed(1)} / 10 IMDb',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Release Date'),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            DateFormat('dd MMMM yyyy').format(
                              DateTime.parse(data.releaseDate.toString()),
                            ),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Adult Content'),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${data.adult}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Languange'),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '${data.originalLanguage}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: blueBanget),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Text(
                    '${data.overview}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
