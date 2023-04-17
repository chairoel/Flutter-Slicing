import 'package:flutter/material.dart';

class DescFiture extends StatelessWidget {
  final String text;
  final Color textColor;
  final TextAlign? textAlign;
  final double textSize;
  final double letterSpacing;
  final double paddingTop;
  final double paddingBottom;
  final double paddingRight;
  final double paddingLeft;

  const DescFiture({
    super.key,
    required this.text,
    this.textColor = Colors.black,
    this.textAlign,
    this.textSize = 16.0,
    this.letterSpacing = 0.5,
    this.paddingTop = 18.0,
    this.paddingBottom = 18.0,
    this.paddingRight = 24.0,
    this.paddingLeft = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: paddingTop,
        bottom: paddingBottom,
        right: paddingRight,
        left: paddingLeft,
      ),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: textSize, letterSpacing: letterSpacing),
        textAlign: textAlign,
      ),
    );
  }
}
