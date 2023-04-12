import 'package:flutter/material.dart';

class TitleFiture extends StatelessWidget {
  final String title;
  final Color color;
  final double letterSpacing;
  final double paddingTop;
  final double paddingBottom;
  final double paddingRight;
  final double paddingLeft;
  const TitleFiture({
    super.key,
    required this.title,
    this.color = Colors.black,
    this.letterSpacing = 0.2,
    this.paddingTop = 60.0,
    this.paddingBottom = 0.0,
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
        title,
        style: TextStyle(
            color: color,
            fontSize: 32,
            fontWeight: FontWeight.w500,
            letterSpacing: letterSpacing),
      ),
    );
  }
}
