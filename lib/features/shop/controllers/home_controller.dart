import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  RxInt carouselCurrentPage = 0.obs;

  void updatePageIndikator(index) => carouselCurrentPage.value = index;
}
