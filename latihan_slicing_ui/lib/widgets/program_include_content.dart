import 'package:flutter/material.dart';

class MyProgramIncludeContent extends StatelessWidget {
  final String image;
  final String title;
  final String content;
  final double pHorizontal;
  final double pVertical;

  const MyProgramIncludeContent({
    super.key,
    required this.image,
    required this.title,
    required this.content,
    this.pHorizontal = 24.0,
    this.pVertical = 32.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: pVertical, horizontal: pHorizontal),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Image.asset("assets/images/$image"),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    content,
                    style: const TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
