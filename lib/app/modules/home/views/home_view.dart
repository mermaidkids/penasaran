import 'package:flutter/material.dart';
import 'package:penasaranfix/app/widgets/HomeAppBar.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f814),
      appBar: HomeAppBar(),
      body: 
      ListView(
        children: [
         Container(
          margin: EdgeInsets.only(top: 50, left: 15, right: 15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                height: 50,
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here...",
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.search,
                size: 27,
              )
            ],
          ),
         ),
          Container(
            margin: const EdgeInsets.only(top: 10 ),
                    // height: MediaQuery.of(context).size.height-150,
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
                              // height: 50,
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
                              height: 280,
                              child: 
                               GridView.count(
                                physics: NeverScrollableScrollPhysics(),
                                  crossAxisCount: 3,
                                  padding: EdgeInsets.all(10),
                                  children: [
                                  AkademiWidget(image:"assets/images/bootcamp-1.png", title: "Bootcamp"),
                                  AkademiWidget(image:"assets/images/seminar-1.png", title: "Webinar"),
                                  AkademiWidget(image:"assets/images/lomba-1.png", title: "Lomba"),
                                  AkademiWidget(image:"assets/images/sertifikasi-1.png", title: "Sertifikasi"),
                                 ]
                                ),
                              
                              // olor: Colors.amber,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15, top:5),
                              height: 45,
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
                              height: 150,
                              child: GridView.count(crossAxisCount: 3,
                              physics: NeverScrollableScrollPhysics(),
                              padding: EdgeInsets.all(10),
                              children: [
                                        KarirCard(image: "assets/images/lowongan-1.png",
                                        title: "Lowongan"),
                                        KarirCard(image: "assets/images/pegawainegerisipil-1.png",
                                        title: "ASN&CPNS"),
                                        KarirCard(image: "assets/images/ad-taruna-1.png",
                                        title: "AD/TARUNA"),
                                        
                                      ],
                              ),
                              // child: Row(
                              //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     Padding(
                              //       padding: const EdgeInsets.only(left: 8),
                              //       child: Row(
                              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      
                              //       )
                              //     )
                              //   ],
                              // ),
                            ),
                           
                               
                            
                            
                            
                          ]
                        )
          ),
        ],
      ),
      bottomNavigationBar: 
        // BottomNavigationBar(
                                
        //                         items: [
        //                           BottomNavigationBarItem(
                                    
        //                             icon: SizedBox.shrink(),
        //                             label: "INFO",
        //                             ),
        //                             BottomNavigationBarItem(
        //                             icon: SizedBox.shrink(),
        //                             label: "BERITA MEDIA",
        //                             ),
        //                             ]
        //                             )
          Container(
                              height: 50,
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
    return 
    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
      Card(
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
    // );
   
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
    return  Card(
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
          height: 50,
          color: (status == true) ?Color(0xffd8dd00) : Color(0xfff4f814), 
          child: Center(
            child: Text(title,style: TextStyle(
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
