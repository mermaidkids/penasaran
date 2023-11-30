import 'package:get/get.dart';

import '../controllers/beasiswa_controller.dart';

class BeasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeasiswaController>(
      () => BeasiswaController(),
    );
  }
}
