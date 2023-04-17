import 'package:flutter/material.dart';

import '../misc/AppColors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double? textSize;
  final FontWeight fontWeight;
  final double height;
  final double? width;
  final VoidCallback onPressed;
  final double paddingTop;
  final double paddingBottom;
  final double paddingRight;
  final double paddingLeft;

  const MyButton({
    super.key,
    required this.text,
    this.textSize,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w600,
    this.height = 48,
    this.width,
    required this.onPressed,
    this.paddingTop = 0.0,
    this.paddingBottom = 0.0,
    this.paddingRight = 0.0,
    this.paddingLeft = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: paddingBottom,
          top: paddingTop,
          left: paddingLeft,
          right: paddingRight),
      child: SizedBox(
        height: height,
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.colorBg2),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: fontWeight, fontSize: textSize),
          ),
        ),
      ),
    );
  }
}
