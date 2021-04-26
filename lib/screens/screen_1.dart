// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_concepts_web/screens/constants_screen1.dart';

class Screen1 extends StatelessWidget {
  // final List menuItems = ['Catalog', 'Delivery', 'Payment', 'Contact', 'About Us'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          // width: 1366,
          // height: 768,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('lib/assets/images/bg1.jpg'),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 28,
              left: 103,
            ),
            child: Column(
              children: [
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      'Browk Shop',
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          color: kRichBlack,
                          fontSize: 24,
                          letterSpacing: -0.22,
                        ),
                      ),
                    ),
                    BuildSizedBox(width: 362),
                    MenuItem('Catalog'),
                    BuildSizedBox(width: 15),
                    MenuItem('Delivery'),
                    BuildSizedBox(width: 10),
                    MenuItem('Payment'),
                    BuildSizedBox(width: 15),
                    MenuItem('About Us'),
                    BuildSizedBox(width: 15),
                    MenuItem('Contact Us')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
