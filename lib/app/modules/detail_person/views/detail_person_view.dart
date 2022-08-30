import 'package:empty_widget/empty_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:fleetime/app/common/style.dart';
import 'package:fleetime/app/services/person_details_service.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_person_controller.dart';

class DetailPersonView extends GetView<DetailPersonController> {
  DetailPersonView({Key? key}) : super(key: key);

  final id = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: FutureBuilder(
          future: PersonDetailsService().fetchPersonDetails(id),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return CustomScrollView(
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
                      ),
                    ),
                    expandedHeight: 600,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      background: FancyShimmerImage(
                        imageUrl:
                            'https://image.tmdb.org/t/p/original/${snapshot.data.profilePath}',
                        height: 600,
                        width: double.maxFinite,
                        boxFit: BoxFit.cover,
                        errorWidget: FancyShimmerImage(
                          imageUrl:
                              'https://i.pinimg.com/474x/56/51/92/565192fc7848fbb8abd85136497a095b.jpg',
                          width: 150,
                          height: 150,
                          boxFit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }

            if (ConnectionState.waiting == snapshot.connectionState) {
              return const CircularProgressIndicator(
                color: blueBanget,
              );
            }

            if (snapshot.data == null || snapshot.data.name == null) {
              return EmptyWidget(
                image: null,
                packageImage: PackageImage.Image_1,
                title: 'Not found',
                subTitle: 'Person not found',
                titleTextStyle: const TextStyle(
                  fontSize: 40,
                  color: Color(0xff9da9c7),
                  fontWeight: FontWeight.w500,
                ),
                subtitleTextStyle: const TextStyle(
                  fontSize: 25,
                  color: Color(0xffabb8d6),
                ),
              );
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
