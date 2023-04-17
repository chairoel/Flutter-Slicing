import 'package:flutter/material.dart';

import '../misc/AppColors.dart';

class MyOutlineButtonRightIcon extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Color borderColor;
  final double borderWidht;
  final IconData icon;
  final double iconSize;
  final Color color;
  final Color backgroundColor;
  final double height;
  final double? width;
  final VoidCallback onPressed;

  const MyOutlineButtonRightIcon({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.borderColor = Colors.white,
    this.borderWidht = 2.0,
    required this.icon,
    this.iconSize = 24.0,
    this.color = Colors.white,
    this.backgroundColor = AppColors.colorBg3,
    this.height = 48,
    this.width,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: height,
        width: width,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: backgroundColor,
              side: BorderSide(color: borderColor, width: borderWidht)),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(color: color, fontWeight: fontWeight),
              ),
              Icon(
                icon,
                size: iconSize,
                color: color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
