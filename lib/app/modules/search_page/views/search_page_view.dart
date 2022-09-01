import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:fleetime/app/common/style.dart';
import 'package:fleetime/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/search_page_controller.dart';

class SearchPageView extends GetView<SearchPageController> {
  const SearchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find your favorite movie here"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Judul',
                    suffixIcon: Icon(Icons.search),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  controller: controller.movieName,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.search),
                  label: const Text("Search"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueBanget,
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    controller.search();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                // Obx(() {
                //   if (controller.isSearchLoading.value) {
                //     return const Center(
                //       child: CircularProgressIndicator(),
                //     );
                //   }

                //   if (controller.listDebtor.isEmpty) {
                //     return const Center(
                //       child: Text('Tidak ada data'),
                //     );
                //   }

                //   // If Bad state: No Element in listDebtor

                //   // If list has no element then return empty list

                //   if (controller.listDebtor.isNotEmpty &&
                //       controller.listDebtor.length > 1) {
                //     return Column(
                //       children: <Widget>[
                //         const Text(
                //           'Data tidak ditemukan',
                //           style: TextStyle(
                //             fontSize: 20,
                //           ),
                //         ),
                //         Image.asset(
                //           'assets/images/search_section/search_404_2.png',
                //           alignment: Alignment.center,
                //           fit: BoxFit.cover,
                //           height: 300,
                //         ),
                //         TextButton(
                //             onPressed: () {},
                //             child: const Text('Create Debitur')),
                //       ],
                //     );
                //   }

                //   return ListView(
                //     scrollDirection: Axis.vertical,
                //     shrinkWrap: true,
                //     children: <Widget>[
                //       Center(
                //         child: Text(
                //           'Found 1 result : ${controller.listDebtor[0].noKtp1}',
                //           style: const TextStyle(
                //               fontSize: 15, fontWeight: FontWeight.w200),
                //         ),
                //       ),
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       ListTile(
                //         title: Text(
                //           controller.listDebtor[0].peminjam1.toString(),
                //           style: GoogleFonts.poppins(
                //             fontSize: 20,
                //             fontWeight: FontWeight.w500,
                //           ),
                //         ),
                //         subtitle: Text(
                //           controller.listDebtor[0].bidangUsaha.toString(),
                //         ),
                //         onTap: () {
                //           Get.toNamed(
                //             Routes.DEBITUR_DETAIL,
                //             arguments: controller.listDebtor[0],
                //           );
                //         },
                //         trailing: const Icon(Icons.keyboard_arrow_right),
                //         leading: CircleAvatar(
                //           backgroundColor: Colors.blue,
                //           maxRadius: 50,
                //           child: Text(
                //             controller.listDebtor[0].peminjam1
                //                 .toString()
                //                 .substring(0, 1),
                //             style: const TextStyle(
                //               fontSize: 30,
                //               color: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   );
                // })
                // Show text json
                // Show search result in getbuilder

                const SizedBox(
                  height: 20,
                ),
                GetBuilder<SearchPageController>(
                  init: controller,
                  builder: (_) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: controller.isLoading.value
                          ? const Center(
                              child: CircularProgressIndicator(
                                  color: Colors.amber),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount: controller.searchResult.length,
                              itemBuilder: (context, index) => Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Get.toNamed(Routes.DETAIL_MOVIE,

                                              // Get Id Movie
                                              arguments: controller
                                                  .searchResult[index].id);
                                        },
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          shadowColor: Colors.black,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: FancyShimmerImage(
                                                imageUrl:
                                                    'https://image.tmdb.org/t/p/w500/${controller.searchResult[index].posterPath}',
                                                width: 200,
                                                height: 300,
                                                boxFit: BoxFit.cover),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 25.0,
                                            ),
                                            Text(
                                              controller
                                                  .searchResult[index].title,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                fontSize: 28,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Row(
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
                                                  '${controller.searchResult[index].voteAverage.toStringAsFixed(1)} / 10 IMDb',
                                                  style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w200,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                // Calendar icon
                                                const Icon(
                                                  Icons.calendar_month,
                                                  color: Colors.grey,
                                                  size: 30,
                                                ),
                                                const SizedBox(
                                                  width: 5.0,
                                                ),

                                                SizedBox(
                                                  width: 150,
                                                  child: Text(
                                                    DateFormat('dd MMMM yyyy')
                                                        .format(
                                                      DateTime.parse(controller
                                                          .searchResult[index]
                                                          .releaseDate
                                                          .toString()),
                                                    ),
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
