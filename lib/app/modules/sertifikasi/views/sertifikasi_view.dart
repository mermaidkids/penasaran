import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sertifikasi_controller.dart';

import '../model/sertifikasi_list.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class SertifikasiView extends GetView<SertifikasiController> {
  const SertifikasiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f814),
      appBar: AppBar(
        title: const Text(
          'Sertifikasi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Color(0xfff4f814),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CardSertifikasi(gridCount: 1);
          } else if (constraints.maxWidth <= 1200) {
            return CardSertifikasi(gridCount: 2);
          } else {
            return CardSertifikasi(gridCount: 3);
          }
        },
      ),
    );
  }
}

class CardSertifikasi extends StatelessWidget {
  final int gridCount;
  const CardSertifikasi({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height-150,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          // DetailList detail = detailList[index];
          children: sertifikasiList.map((sertifikasi) {
            return Stack(children: [
              InkWell(
                onTap: () {},
                child: Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                      color: const Color.fromARGB(
                          255, 83, 83, 83), // Set the border color here
                      width: 2, // Set the border width here
                    ), // Adjust the radius as needed
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center vertically
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(sertifikasi.imageAsset, height: 150),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          sertifikasi.judul,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround, // Adjust as needed
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Action for "Lihat Selengkapnya" button
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.grey),
                              // You can customize other button properties here if needed
                            ),
                            child: Text('Lihat Selengkapnya'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Action for "Daftar Sekarang" button
                            },
                            child: Text('Daftar Sekarang'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: FavoriteButton(),
              ),
            ]);
          }).toList()),
    );
  }
}
