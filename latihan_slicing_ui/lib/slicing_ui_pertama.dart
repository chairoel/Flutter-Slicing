import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class FirstSlicingApp extends StatelessWidget {
  const FirstSlicingApp({super.key});

  @override
  Widget build(BuildContext context) {
    Color colorBg1 = Color(0xFF171a53);
    Color colorBg2 = Color(0xFF142580);
    Color buttonGreen = Color(0xFFbdea09);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          // leadingWidth: 32,
          leading: IconButton(
            onPressed: () {},
            icon: Image.network(
                "https://cdn.iconscout.com/icon/free/png-512/udacity-3772434-3151560.png"),
            padding: const EdgeInsets.only(left: 18, right: 6),
          ),
          titleSpacing: 0,
          title: Text(
            "UDACITY",
            style: TextStyle(
                letterSpacing: 3,
                fontWeight: FontWeight.w400,
                color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
          ],
        ),
        body: ListView(
          children: [
            // Stack(
            //   children: [
            Container(
              color: colorBg1,
              child: Column(
                children: [
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    // color: colorBg1,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: Text(
                            "Nanodegree Program",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Learn C++",
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 14),
                          child: Text(
                            "Learn ++, a high-performance programming language used in the world's most exciting engineering jobs -- from self-driving cars and robotics, to web browsers, media platforms, servers, and even video games.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: SizedBox(
                            height: 48,
                            width: 160,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonGreen),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Enroll Now",
                                    style: TextStyle(color: colorBg1),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    size: 24.0,
                                    color: colorBg1,
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: 160,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side:
                                    BorderSide(color: Colors.white, width: 2)),
                            onPressed: () {},
                            child: const Text(
                              "Download Syllabus",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            timeCounter("05", "Days"),
                            timeCounter("20", "Hrs"),
                            timeCounter("34", "Min"),
                            timeCounter("02", "Sec"),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: Stack(
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/pattern.png",
                                  ),
                                  fit: BoxFit.fitWidth)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          child: Align(
                            alignment: Alignment(0, -1),
                            child: Container(
                              height: 250,
                              width: 340,
                              decoration: imageRounded(
                                  80, 4, 4, 4, "assets/images/hero1.png"),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-1, -0.6),
                          child: SizedBox(
                            width: 72,
                            height: 72,
                            child: Image.asset("assets/images/kubus.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment(1, 0.6),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset("assets/images/kubus.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.6, -0.77),
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset("assets/images/circular.png"),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.83, -0.90),
                          child: SizedBox(
                            width: 80,
                            height: 80,
                            child:
                                Image.asset("assets/images/personalized.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: colorBg2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  fitureText("Estimated time", "4 Months", "At 10 hrs/week"),
                  fitureText("Enroll by", "March 29, 2023",
                      "Get access to the classroom immediately upon enrollment"),
                  fitureText(
                      "Skills acquired",
                      "Threading, Heap Memory, Dynamic Memory Allocation, Control Flow",
                      ""),
                  textUnderline("See more skills +")
                ],
              ),
            ),

            Container(
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Text(
                        "What you will learn",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 250,
                        width: 340,
                        decoration: imageRounded(
                            4, 80, 4, 4, "assets/images/syllabus1.png"),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Text(
                        "Learn C++ by Coding Five Projects",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1),
                      ),
                    ),
                  ]),
            )
          ],
        ),
        // ]),
      ),
    );
  }

  BoxDecoration imageRounded(
      double tl, double tr, double bl, double br, String url) {
    return BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(tl),
          topRight: Radius.circular(tr),
          bottomLeft: Radius.circular(bl),
          bottomRight: Radius.circular(br),
        ),
        image: DecorationImage(
            image: AssetImage(
              url,
            ),
            fit: BoxFit.fitHeight));
  }

  Padding textUnderline(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, left: 12, right: 12),
      child: Container(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        padding: const EdgeInsets.only(bottom: 2),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.white, width: 1.0),
          ),
        ),
      ),
    );
  }

  Padding fitureText(String name, String time, String desc) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 12, right: 12),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
        Text(
          desc,
          style: TextStyle(color: Colors.white, fontSize: 12),
        )
      ]),
    );
  }

  Padding timeCounter(String count, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, top: 12, bottom: 12),
      child: Column(
        children: [
          Text(
            count,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
