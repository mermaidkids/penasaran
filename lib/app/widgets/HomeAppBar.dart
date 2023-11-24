import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    // Container(
    //   color: Color(0xfff4f814),
    //   padding: EdgeInsets.all(25),
    //   child: Row(
    //     children: [
    //       Text('Penasaran',
    //     style: TextStyle(
    //       color: Colors.white,
    //       fontSize: 28,
    //       fontWeight: FontWeight.bold,
    //       fontFamily: 'Poppins',
    //     ),
    //     ),
    //     ],
    //   ),
    // );
    AppBar(
      
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
      );
  }
    Size get preferredSize => Size.fromHeight(kToolbarHeight);
}