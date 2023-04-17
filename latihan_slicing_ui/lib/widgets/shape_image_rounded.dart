import 'package:flutter/material.dart';

import '../enum/circular_side.dart';
import '../util/util.dart';

class MyShapeImageRounded extends StatelessWidget {
  final String image;
  final BoxFit imageFit;
  final double height;
  final double width;
  final CircularSide circularSide;
  final double circularRadius;
  final double circularRadiusOthers;

  const MyShapeImageRounded({
    super.key,
    required this.image,
    required this.circularSide,
    this.imageFit = BoxFit.fitHeight,
    this.circularRadius = 80.0,
    this.circularRadiusOthers = 4.0,
    this.height = 250,
    this.width = 340,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: Util().borderRadiusSelection(
                circularSide, circularRadius, circularRadiusOthers),
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/$image",
                ),
                fit: imageFit)));
  }
}
