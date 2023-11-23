import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Penasaran',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
        ),
        ),
        backgroundColor: Color(0xfff4f814),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xfff4f814),
                      ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 85 ),
                    height: MediaQuery.of(context).size.height-150,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                    ),
                    child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.only(left: 15),
                              // color: Colors.green,
                              height: 50,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Akademi",
                                       style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      color: Color(0xffa3a3a3)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 220,
                              child: 
                              GridView.count(crossAxisCount: 3,
                              padding: EdgeInsets.all(10),
                              // childAspectRatio: 2 / 2 ,
                               children: [
                                AkademiWidget(image:"assets/images/bootcamp-1.png", title: "Bootcamp"),
                                AkademiWidget(image:"assets/images/seminar-1.png", title: "Webinar"),
                                AkademiWidget(image:"assets/images/lomba-1.png", title: "Lomba"),
                                AkademiWidget(image:"assets/images/sertifikasi-1.png", title: "Sertifikasi"),
                               ]
                              )
                              // Card(
                              //          color:  Color(0xfff4f814),
                              //          elevation: 5,
                              //          child: Column(
                              //           mainAxisAlignment: MainAxisAlignment.center,
                              //           children: [
                              //             Container(
                              //             padding: EdgeInsets.only(top: 5),
                              //               width: Get.width*0.30,
                              //               height: 100,
                              //               // color: Colors.amber,
                              //               child: Column(
                              //                 // crossAxisAlignment: CrossAxisAlignment.cer,
                              //                 children: [
                              //                   SizedBox(
                              //                     width: MediaQuery.of(context).size.width * 0.25,
                              //                     height: 68,
                              //                     child:Image.asset('assets/images/bootcamp-1.png',
                              //                   fit: BoxFit.contain,
                              //                   ), 
                              //                   ),
                              //                   Text('Bootcamp',
                              //                 style: const TextStyle(
                              //                   fontSize: 16.0,
                              //                   // fontWeight: FontWeight.bold,
                              //                   fontFamily: 'Poppins',
                              //                   color: Colors.black,
                              //                 ),)
                              //                 ],
                              //               ),
                              //             ),
                              //             // Add more widgets as needed
                              //           ],
                              //         ),
                                      
                              //       ),
                              // color: Colors.amber,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15, top:5),
                              height: 50,
                               child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("Karir",
                                       style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      color: Color(0xffa3a3a3)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 110,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        KarirCard(image: "assets/images/lowongan-1.png",
                                        title: "Lowongan"),
                                        KarirCard(image: "assets/images/pegawainegerisipil-1.png",
                                        title: "ASN&CPNS"),
                                        KarirCard(image: "assets/images/ad-taruna-1.png",
                                        title: "AD/TARUNA"),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 78,
                              // color: Color(0xfff4f814),
                              child: Row(
                                children: [
                                  ItemNav(
                                    status: true,
                                    title: "INFO",
                                  ),
                                  ItemNav(
                                    status: false, 
                                    title: "Berita Media" )
                                ],
                              ),
                            )
                          ]
                        )
          ),
        ],
      )
    );
  }
}

class AkademiWidget extends StatelessWidget {
  AkademiWidget({
    required this.image,
    required this.title,
    super.key,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
           color:  Color(0xffd9d9d9),
           elevation: 1,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
              padding: EdgeInsets.only(top: 5),
                width: Get.width*0.30,
                height: 90,
                // color: Colors.amber,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.cer,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: 60,
                      child:Image.asset(image,
                    fit: BoxFit.contain,
                    ), 
                    ),
                    Text(title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),)
                  ],
                ),
              ),
              // Add more widgets as needed
            ],
          ),
        );
  }
}

class KarirCard extends StatelessWidget {
  KarirCard({
    required this.image,
    required this.title,
    super.key,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: title,
      child: Card(
        color:  Color(0xffd9d9d9),
        child: Container(
         padding: EdgeInsets.only(top: 5),
          width: Get.width*0.30,
          height: 100,
          // color: Colors.amber,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.cer,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 68,
                child:Image.asset(image,
              fit: BoxFit.contain,
              ), 
              ),
              Text(title,
            style: const TextStyle(
              fontSize: 16.0,
              // fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Colors.black,
            ),)
            ],
          ),
        ),
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
          width: MediaQuery.of(context).size.width*0.5,
          height: 78,
          color: (status == true) ?Color(0xffd8dd00) : Color(0xfff4f814), 
          child: Center(
            child: Text(title,style: TextStyle(
              fontSize: 24,
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
