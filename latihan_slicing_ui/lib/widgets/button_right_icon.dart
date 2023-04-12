import 'package:flutter/material.dart';

import '../misc/AppColors.dart';

class MyButtonRightIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final double iconSize;
  final Color color;
  final Color backgroundColor;
  final double height;
  final double? width;
  final VoidCallback onPressed;

  const MyButtonRightIcon({
    super.key,
    required this.text,
    required this.icon,
    this.iconSize = 24.0,
    this.color = AppColors.colorBg1,
    this.backgroundColor = AppColors.buttonGreen,
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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(color: color),
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
