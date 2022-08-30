import 'package:fleetime/app/models/person_details.dart';
import 'package:fleetime/app/services/person_details_service.dart';
import 'package:get/get.dart';

class DetailPersonController extends GetxController {
  @override
  void onInit() {
    fetchDetails();
    super.onInit();
  }

  var details = PersonDetails();

  void fetchDetails() {
    final personId = Get.arguments;
    final api = PersonDetailsService();
    api.fetchPersonDetails(personId).then((value) {
      details = value;
      update();
    });
  }
}
