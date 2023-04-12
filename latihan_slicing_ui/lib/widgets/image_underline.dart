import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/widgets/text_underline.dart';

import '../misc/AppColors.dart';

class ImageTextUnderline extends StatelessWidget {
  final String text;
  final Color textColor;
  final double textSize;
  final double pHorizontal;
  final double pButtom;
  const ImageTextUnderline({
    super.key,
    required this.text,
    this.textColor = AppColors.colorBg2,
    this.textSize = 14,
    this.pHorizontal = 12,
    this.pButtom = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Image.asset("assets/images/project-icon.png"),
          Flexible(
            child: MyTextUnderline(
              text: "$text +",
              textColor: textColor,
              pButtom: pButtom,
              pRight: pHorizontal,
              pLeft: pHorizontal,
              textSize: textSize,
            ),
          ),
        ],
      ),
    );
  }
}
