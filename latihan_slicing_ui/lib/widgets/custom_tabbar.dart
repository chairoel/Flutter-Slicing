import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/widgets/desc_fiture.dart';
import 'package:latihan_slicing_ui/widgets/list_data_view.dart';
import 'package:latihan_slicing_ui/widgets/title_fiture.dart';

import '../misc/AppColors.dart';

@immutable
class MyTabBar extends StatefulWidget {
  final String title;
  final String desc;
  final String tabTitle1;
  final String tabTitle2;
  final List<String> listItemTab1;
  final List<String> listItemTab2;
  final String imageTab1;
  final String imageTab2;

  const MyTabBar({
    super.key,
    required this.title,
    required this.desc,
    required this.tabTitle1,
    required this.tabTitle2,
    required this.listItemTab1,
    required this.listItemTab2,
    required this.imageTab1,
    required this.imageTab2,
  });

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Container(
      padding: const EdgeInsets.only(bottom: 40),
      color: Colors.white,
      child: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleFiture(title: widget.title),
          DescFiture(
            text: widget.desc,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: TabBar(
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                labelColor: AppColors.colorIcon1,
                unselectedLabelColor: Colors.black,
                indicatorColor: AppColors.colorIcon1,
                tabs: [
                  Tab(text: widget.tabTitle1),
                  Tab(text: widget.tabTitle2),
                ]),
          ),
          Container(
            // color: Colors.amber,
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: double.maxFinite,
            height: 700,
            child: TabBarView(controller: tabController, children: [
              Column(
                children: [
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    child: Image.asset("assets/images/${widget.imageTab1}"),
                    // child: Image.asset("assets/images/feedback.png"),
                  ),
                  SizedBox(
                    height: 120,
                    child: Column(
                      children: [
                        ListDataView(listItem: widget.listItemTab1),
                      ],
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        serviceRate("1,400+", "project reviewers"),
                        serviceRate("2.7M", "projects reviewed"),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      serviceRate("88/100", "reviewer rating"),
                      serviceRate(
                          "1.1 hours", "avg project review turnaround time"),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 400,
                    margin: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 12),
                    padding: const EdgeInsets.only(bottom: 13),
                    child: Image.asset("assets/images/${widget.imageTab2}"),
                    // child: Image.asset("assets/images/on-demand.png"),
                  ),
                  SizedBox(
                    height: 120,
                    child: Column(
                      children: [
                        ListDataView(listItem: widget.listItemTab2),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          serviceRate("1,400+", "project reviewers"),
                          serviceRate("0.85 hours", "median response time"),
                        ]),
                  ),
                ],
              ),
            ]),
          )
        ],
      )),
    );
  }
}

Container serviceRate(String title, String desc) {
  return Container(
    // color: Colors.blue,
    margin: const EdgeInsets.only(top: 12, bottom: 12),
    width: 150,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4),
        Text(
          desc,
          style: const TextStyle(color: Colors.black),
        ),
      ],
    ),
  );
}
