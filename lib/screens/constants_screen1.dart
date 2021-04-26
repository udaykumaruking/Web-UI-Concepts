import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kGreenSheen = Color(0xff64BCAE);
const Color kRichBlack = Color(0xff111111);

class MenuItem extends StatelessWidget {
  MenuItem(this.menuItem);
  final String menuItem;
  @override
  Widget build(BuildContext context) {
    return Text(
      menuItem,
      style: GoogleFonts.roboto(
        fontWeight: FontWeight.w300,
        color: kRichBlack,
        letterSpacing: -0.15,
        fontSize: 16,
      ),
    );
  }
}

class BuildPadding extends StatelessWidget {
  final double leftPad, rightPad, topPad, bottomPad;
  BuildPadding({this.leftPad, this.topPad, this.bottomPad, this.rightPad});
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          right: rightPad,
          left: leftPad,
          top: topPad,
          bottom: bottomPad,
        ),
      );
}

class BuildSizedBox extends StatelessWidget {
  BuildSizedBox({this.height, this.width});
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
    );
  }
}
