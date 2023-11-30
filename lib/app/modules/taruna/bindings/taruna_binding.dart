import 'package:get/get.dart';

import '../controllers/taruna_controller.dart';

class TarunaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TarunaController>(
      () => TarunaController(),
    );
  }
}
