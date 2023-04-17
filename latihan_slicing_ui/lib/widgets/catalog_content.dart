import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:latihan_slicing_ui/widgets/button.dart';
import 'package:latihan_slicing_ui/widgets/outlined_button.dart';
import 'package:latihan_slicing_ui/widgets/text_underline.dart';

import '../enum/circular_side.dart';
import '../enum/level.dart';
import '../misc/AppColors.dart';
import '../util/util.dart';

class MyCatalogContent extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String desc;
  final Level level;
  final String duration;
  final double rating;
  final int reviews;

  const MyCatalogContent(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.desc,
      required this.level,
      required this.duration,
      required this.rating,
      required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12, right: 12, left: 12),
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              Util().borderRadiusSelection(CircularSide.topRight, 80.0, 4.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(80.0),
                  topLeft: Radius.circular(4.0)),
              image: DecorationImage(
                  image: AssetImage("assets/images/$imageUrl"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                color: AppColors.buttonGreen,
                borderRadius: BorderRadius.circular(24)),
            child: const Text("Nanodegree"),
          ),
          Container(
              margin: const EdgeInsets.only(
                bottom: 24,
                right: 24,
                left: 24,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              )),
          Container(
            margin: const EdgeInsets.only(
              bottom: 24,
              right: 24,
              left: 24,
            ),
            child: Text(
              desc,
              style: const TextStyle(fontSize: 12.5),
              textAlign: TextAlign.justify,
            ),
          ),
          const MyTextUnderline(
            pButtom: 24,
            text: "View more +",
            textColor: AppColors.colorIcon1,
            fontWeight: FontWeight.w500,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(width: 155, text: "Program Details", onPressed: () {}),
                MyOutlineButton(
                    width: 155,
                    text: "Download Syllabus",
                    textColor: AppColors.colorBg2,
                    borderColor: AppColors.colorBg2,
                    onPressed: () {}),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4)),
              color: Colors.blueGrey[100],
            ),
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      compareLevel(level),
                      color: Colors.black45,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      level.value,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.timer_outlined,
                      color: Colors.black45,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      duration,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      ignoreGestures: true,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 14,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.black87,
                      ),
                      onRatingUpdate: (rating) {
                        // print(rating);
                      },
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "$reviews reviews",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

IconData? compareLevel(Level level) {
  IconData? data;

  if (level == Level.beginner) {
    data = Icons.signal_cellular_alt_1_bar_outlined;
  } else if (level == Level.intermediate) {
    data = Icons.signal_cellular_alt_2_bar_outlined;
  } else if (level == Level.advanced) {
    data = Icons.signal_cellular_alt_outlined;
  }
  return data;
}
