import 'package:flutter/material.dart';

class MyTimeCounter extends StatelessWidget {
  final String count;
  final String label;
  final double pTop;
  final double pButtom;
  final double pLeft;
  final double pRight;

  const MyTimeCounter({
    super.key,
    required this.count,
    required this.label,
    this.pTop = 0,
    this.pButtom = 0,
    this.pLeft = 0,
    this.pRight = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: pButtom, top: pTop, left: pLeft, right: pRight),
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
