import 'package:get/get.dart';

import '../controllers/detail_person_controller.dart';

class DetailPersonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPersonController>(
      () => DetailPersonController(),
    );
  }
}
