import 'package:flutter/material.dart';

class MyInfoProgramDetail extends StatelessWidget {
  final String name;
  final String time;
  final String desc;
  final double pTop;
  final double pButtom;
  final double pLeft;
  final double pRight;

  const MyInfoProgramDetail({
    super.key,
    required this.name,
    required this.time,
    required this.desc,
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
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Text(
                time,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        Text(
          desc,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        )
      ]),
    );
  }
}
