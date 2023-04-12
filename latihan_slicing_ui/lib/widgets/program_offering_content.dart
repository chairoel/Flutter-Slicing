import 'package:flutter/material.dart';

import '../enum/circular_side.dart';
import '../misc/AppColors.dart';
import '../util/util.dart';
import 'list_data_view.dart';

class MyProgramOfferingContent extends StatelessWidget {
  final List<String> listItems;
  final String image;
  final String title;
  final CircularSide circularSide;
  final double circularRadius;

  const MyProgramOfferingContent({
    super.key,
    required this.image,
    required this.title,
    required this.circularSide,
    this.circularRadius = 100.0,
    required this.listItems,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 40, left: 24),
      child: SizedBox(
        width: 280,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 260,
              decoration: BoxDecoration(
                  color: AppColors.colorBg1,
                  borderRadius: Util()
                      .borderRadiusSelection(circularSide, circularRadius),
                  image: DecorationImage(
                      image: AssetImage("assets/images/$image"),
                      fit: BoxFit.fitHeight)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            ListDataView(listItem: listItems)
          ],
        ),
      ),
    );
  }
}
