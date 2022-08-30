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

  String convertBirtdayToAge(String birthday) {
    final date = DateTime.parse(birthday);
    final now = DateTime.now();
    final difference = now.difference(date);
    final age = difference.inDays ~/ 365;
    return '$age years old';
  }

  String parseJenisKelamin(String jenisKelamin) {
    if (jenisKelamin == '2') {
      return 'Male';
    } else {
      return 'Female';
    }
  }
}
