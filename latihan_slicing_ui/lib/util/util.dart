import 'package:flutter/cupertino.dart';

import '../enum/circular_side.dart';

class Util {
  BorderRadius borderRadiusSelection(
      CircularSide circularSide, double radius, double otherRadius) {
    return BorderRadius.only(
      topLeft: (circularSide == CircularSide.topLeft)
          ? Radius.circular(radius)
          : Radius.circular(otherRadius),
      topRight: (circularSide == CircularSide.topRight)
          ? Radius.circular(radius)
          : Radius.circular(otherRadius),
      bottomRight: (circularSide == CircularSide.bottomRight)
          ? Radius.circular(radius)
          : Radius.circular(otherRadius),
      bottomLeft: (circularSide == CircularSide.bottomLeft)
          ? Radius.circular(radius)
          : Radius.circular(otherRadius),
    );
  }
}
