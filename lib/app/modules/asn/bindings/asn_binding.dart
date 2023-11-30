import 'package:get/get.dart';

import '../controllers/asn_controller.dart';

class AsnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AsnController>(
      () => AsnController(),
    );
  }
}
