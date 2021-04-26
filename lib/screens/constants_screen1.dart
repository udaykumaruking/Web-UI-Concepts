import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kGreenSheen = Color(0xff64BCAE);
const Color kRichBlack = Color(0xff111111);
const Color kOpaRichBlack = Color(0x11111111);
const Color kWhite = Color(0xffffffff);

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
  final Widget child;
  BuildPadding(
      {this.leftPad, this.topPad, this.bottomPad, this.rightPad, this.child});
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          right: rightPad,
          left: leftPad,
          top: topPad,
          bottom: bottomPad,
        ),
        child: child,
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

class BuildButton extends StatelessWidget {
  BuildButton(
      {@required this.containerColor,
      @required this.text,
      @required this.textColor});

  final Color containerColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: containerColor),
      child: BuildPadding(
        leftPad: 25,
        rightPad: 25,
        topPad: 12,
        bottomPad: 12,
        child: Text(
          text,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: textColor,
            letterSpacing: 0.5,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
