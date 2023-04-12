import 'package:flutter/material.dart';

class MyTextIconUnderline extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final IconData icon;
  final bool boldStyle;
  final double pTop;
  final double pBottom;
  final double pRight;
  final double pLeft;

  const MyTextIconUnderline({
    super.key,
    required this.text,
    required this.textColor,
    this.textSize = 16,
    required this.icon,
    this.boldStyle = false,
    this.pTop = 0,
    this.pBottom = 0,
    this.pRight = 24,
    this.pLeft = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: pBottom, top: pTop, left: pLeft, right: pRight),
      child: Container(
        width: 250,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: textColor, width: 1.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: (boldStyle)
                  ? TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: FontWeight.w600)
                  : TextStyle(color: textColor, fontSize: textSize),
            ),
            Icon(
              icon,
              size: 24.0,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
