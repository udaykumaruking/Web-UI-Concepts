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
              right: 103,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Browk Shop',
                      style: GoogleFonts.playfairDisplay(
                        textStyle: TextStyle(
                          color: kRichBlack,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        MenuItem('Catalog'),
                        BuildSizedBox(width: 20),
                        MenuItem('Delivery'),
                        BuildSizedBox(width: 20),
                        MenuItem('Payment'),
                        BuildSizedBox(width: 20),
                        MenuItem('About Us'),
                        BuildSizedBox(width: 20),
                        MenuItem('Contact Us'),
                      ],
                    ),
                    Row(
                      children: [
                        BuildButton(
                          containerColor: kOpaRichBlack,
                          textColor: kRichBlack,
                          text: 'Sign In',
                        ),
                        BuildSizedBox(width: 12),
                        BuildButton(
                          containerColor: kGreenSheen,
                          textColor: kWhite,
                          text: 'Join Now',
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Be fashionable \nthis summer',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 64,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.58,
                              textStyle: TextStyle()),
                        ),
                        BuildSizedBox(height: 15),
                        Text(
                          'We arranged a liquidation before the start of the\nseason. Buy summer clothes now with a 50% discount',
                          style: GoogleFonts.roboto(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        BuildSizedBox(height: 25),
                        Row(
                          children: [
                            BuildButton(
                              containerColor: kGreenSheen,
                              text: 'Catalog',
                              textColor: kWhite,
                            ),
                            BuildSizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: kOpaRichBlack),
                              child: BuildPadding(
                                leftPad: 15,
                                rightPad: 15,
                                topPad: 9,
                                bottomPad: 9,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    BuildPadding(
                                      bottomPad: 0.2,
                                      leftPad: 0.2,
                                      rightPad: 0.2,
                                      topPad: 0.2,
                                      child: Container(
                                        child: Icon(
                                          Icons.keyboard_arrow_right_sharp,
                                          color: Colors.white,
                                          size: 32,
                                        ),
                                        decoration: BoxDecoration(
                                            color: kGreenSheen,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                    ),
                                    BuildSizedBox(width: 15),
                                    Text(
                                      'See video about collection',
                                      style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        color: kRichBlack,
                                        letterSpacing: 0.5,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                BuildSizedBox(height: 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
