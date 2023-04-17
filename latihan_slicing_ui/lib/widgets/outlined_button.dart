import 'package:flutter/material.dart';

class MyOutlineButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final double? textSize;
  final Color borderColor;
  final double borderWidht;
  final double height;
  final double? width;
  final VoidCallback onPressed;

  const MyOutlineButton({
    super.key,
    required this.text,
    this.textSize,
    this.textColor = Colors.white,
    this.borderColor = Colors.white,
    this.borderWidht = 2.0,
    this.height = 48,
    this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: BorderSide(color: borderColor, width: borderWidht)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: textSize),
        ),
      ),
    );
  }
}
