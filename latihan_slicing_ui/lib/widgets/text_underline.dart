import 'package:flutter/material.dart';

class MyTextUnderline extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final double pTop;
  final double pButtom;
  final double pLeft;
  final double pRight;

  const MyTextUnderline({
    super.key,
    required this.text,
    required this.textColor,
    this.textSize = 14,
    this.pTop = 0,
    this.pButtom = 0,
    this.pLeft = 24,
    this.pRight = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: pButtom, top: pTop, left: pLeft, right: pRight),
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: textColor, width: 1.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: textSize),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
