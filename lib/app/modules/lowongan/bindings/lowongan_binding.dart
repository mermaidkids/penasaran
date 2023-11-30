import 'package:get/get.dart';

import '../controllers/lowongan_controller.dart';

class LowonganBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LowonganController>(
      () => LowonganController(),
    );
  }
}
