import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/enum/circular_side.dart';
import 'package:latihan_slicing_ui/enum/level.dart';
import 'package:latihan_slicing_ui/widgets/catalog_content.dart';
import 'package:latihan_slicing_ui/widgets/custom_appbar.dart';
import 'package:latihan_slicing_ui/widgets/custom_drawer.dart';
import 'package:latihan_slicing_ui/widgets/outlined_button_right_icon.dart';
import 'package:latihan_slicing_ui/widgets/text_span_bold.dart';
import 'package:latihan_slicing_ui/widgets/title_fiture.dart';

import '../../misc/AppColors.dart';
import '../../util/util.dart';

class CatalogProgramPage extends StatefulWidget {
  const CatalogProgramPage({super.key});

  @override
  State<CatalogProgramPage> createState() => _CatalogProgramPageState();
}

class _CatalogProgramPageState extends State<CatalogProgramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "UDACITY"),
      endDrawer: const MyDrawer(),
      body: SingleChildScrollView(
          child: Container(
        color: AppColors.colorBg4,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.only(bottom: 60.0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColors.colorBg2,
                  borderRadius: Util()
                      .borderRadiusSelection(CircularSide.bottomLeft, 100, 0),
                ),
                child: Column(
                  children: [
                    const TitleFiture(
                      color: Colors.white,
                      title: "Individual Learners Catalog",
                      textAlign: TextAlign.center,
                    ),
                    const TextSpanBold(
                      text:
                          "Transform your career with Nanodegree programs starting at ",
                      textBold: "\$399/mo.",
                      textColor: Colors.white,
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 24),
                      child: TextFormField(
                        textCapitalization: TextCapitalization.sentences,
                        decoration: const InputDecoration(
                          labelText: 'Search',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(
                            Icons.search_rounded,
                            color: AppColors.colorBg2,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32, right: 24, left: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyOutlineButtonRightIcon(
                    width: 160,
                    text: 'Filters',
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    icon: Icons.list_rounded,
                    iconSize: 32,
                    borderColor: Colors.grey,
                    borderWidht: 1,
                    onPressed: () {},
                  ),
                  MyOutlineButtonRightIcon(
                    width: 160,
                    text: 'Sort By',
                    color: Colors.black,
                    backgroundColor: Colors.white,
                    icon: Icons.keyboard_arrow_down_rounded,
                    iconSize: 32,
                    borderColor: Colors.grey,
                    borderWidht: 1,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const MyCatalogContent(
                imageUrl: "hero1.png",
                title: "C++",
                desc:
                    "Get hands-on experience building five real-world projects in this popular general-purpose programming language.",
                level: Level.intermediate,
                duration: "4 Month",
                rating: 4,
                reviews: 1229),
            const MyCatalogContent(
                imageUrl: "syllabus1.png",
                title: "Data Scientist",
                desc:
                    "Build effective machine learning models, run data pipelines, build recommendation systems, and deploy solutions to the cloud with industry-aligned projects.",
                level: Level.advanced,
                duration: "4 Month",
                rating: 4.5,
                reviews: 1216),
          ],
        ),
      )),
    );
  }
}
