import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        width: 1366,
        height: 768,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg1.jpg'),
          ),
        ),
      ),
    );
  }
}
