import 'package:get/get.dart';

import '../modules/asn/bindings/asn_binding.dart';
import '../modules/asn/views/asn_view.dart';
import '../modules/beasiswa/bindings/beasiswa_binding.dart';
import '../modules/beasiswa/views/beasiswa_view.dart';
import '../modules/berita/bindings/berita_binding.dart';
import '../modules/berita/views/berita_view.dart';
import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lomba/bindings/lomba_binding.dart';
import '../modules/lomba/views/lomba_view.dart';
import '../modules/lowongan/bindings/lowongan_binding.dart';
import '../modules/lowongan/views/lowongan_view.dart';
import '../modules/sertifikasi/bindings/sertifikasi_binding.dart';
import '../modules/sertifikasi/views/sertifikasi_view.dart';
import '../modules/taruna/bindings/taruna_binding.dart';
import '../modules/taruna/views/taruna_view.dart';
import '../modules/webinar/bindings/webinar_binding.dart';
import '../modules/webinar/views/webinar_view.dart';

// import '../modules/detail/model/detail_list.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BERITA,
      page: () => const BeritaView(),
      binding: BeritaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.WEBINAR,
      page: () => const WebinarView(),
      binding: WebinarBinding(),
    ),
    GetPage(
      name: _Paths.LOMBA,
      page: () => const LombaView(),
      binding: LombaBinding(),
    ),
    GetPage(
      name: _Paths.SERTIFIKASI,
      page: () => const SertifikasiView(),
      binding: SertifikasiBinding(),
    ),
    GetPage(
      name: _Paths.BEASISWA,
      page: () => const BeasiswaView(),
      binding: BeasiswaBinding(),
    ),
    GetPage(
      name: _Paths.LOWONGAN,
      page: () => const LowonganView(),
      binding: LowonganBinding(),
    ),
    GetPage(
      name: _Paths.ASN,
      page: () => const AsnView(),
      binding: AsnBinding(),
    ),
    GetPage(
      name: _Paths.TARUNA,
      page: () => const TarunaView(),
      binding: TarunaBinding(),
    ),
  ];
}
