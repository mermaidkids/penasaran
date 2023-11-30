import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:penasaranfix/app/routes/app_pages.dart';

import '../controllers/berita_controller.dart';
import '../model/berita_list.dart';

class BeritaView extends GetView<BeritaController> {
  const BeritaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Berita Media',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Color(0xfff4f814),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          BeritaList berita = beritaList[index];
          return InkWell(
            onTap: () {},
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(berita.imageAsset),
                  ),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              berita.type,
                              style: const TextStyle(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              berita.judul,
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 12,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  berita.tanggal,
                                  style: const TextStyle(fontSize: 10),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        },
        itemCount: beritaList.length,
      ),
      bottomNavigationBar: Container(
        height: 50,
        // color: Color(0xfff4f814),
        child: Row(children: [
          InkWell(
            onTap: () => Get.toNamed(Routes.HOME),
            child: ItemNav(
              status: false,
              title: "INFO",
            ),
          ),
          InkWell(
            onTap: () => Get.toNamed(Routes.BERITA),
            child: ItemNav(status: true, title: "Berita Media"),
          )
        ]),
      ),
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    required this.status,
    required this.title,
    super.key,
  });

  final bool status;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 50,
          color: (status == true) ? Color(0xffd8dd00) : Color(0xfff4f814),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Color(0xffffffff)),
            ),
          ),
        ),
      ],
    );
  }
}
