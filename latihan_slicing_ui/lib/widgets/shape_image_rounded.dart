import 'package:flutter/material.dart';

import '../enum/circular_side.dart';
import '../util/util.dart';

class MyShapeImageRounded extends StatelessWidget {
  final String image;
  final double height;
  final double width;
  final CircularSide circularSide;
  final double circularRadius;

  const MyShapeImageRounded({
    super.key,
    required this.image,
    required this.circularSide,
    this.circularRadius = 80.0,
    this.height = 250,
    this.width = 340,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius:
                Util().borderRadiusSelection(circularSide, circularRadius),
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/$image",
                ),
                fit: BoxFit.fitHeight)));
  }
}

// Container(
//                               height: 250,
//                               width: 340,
//                               decoration: imageRounded(
//                                   80, 4, 4, 4, "assets/images/hero1.png"),
//                             ),

// Padding(
//   padding: const EdgeInsets.symmetric(vertical: 48),
//   child: Align(
//     alignment: const Alignment(0, -1),
//     child: Container(
//       height: 250,
//       width: 340,
//       decoration: imageRounded(
//           80, 4, 4, 4, "assets/images/hero1.png"),
//     ),
//   ),
// ),