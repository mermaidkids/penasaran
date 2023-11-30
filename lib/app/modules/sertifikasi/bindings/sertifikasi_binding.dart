import 'package:get/get.dart';

import '../controllers/sertifikasi_controller.dart';

class SertifikasiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SertifikasiController>(
      () => SertifikasiController(),
    );
  }
}
