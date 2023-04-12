import 'package:flutter/cupertino.dart';

import '../enum/circular_side.dart';

class Util {
  BorderRadius borderRadiusSelection(CircularSide circularSide, double radius) {
    return BorderRadius.only(
      topLeft: (circularSide == CircularSide.topLeft)
          ? Radius.circular(radius)
          : const Radius.circular(4),
      topRight: (circularSide == CircularSide.topRight)
          ? Radius.circular(radius)
          : const Radius.circular(4),
      bottomRight: (circularSide == CircularSide.bottomRight)
          ? Radius.circular(radius)
          : const Radius.circular(4),
      bottomLeft: (circularSide == CircularSide.bottomLeft)
          ? Radius.circular(radius)
          : const Radius.circular(4),
    );
  }
}
