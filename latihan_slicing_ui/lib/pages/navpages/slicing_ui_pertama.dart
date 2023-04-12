import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latihan_slicing_ui/misc/AppColors.dart';
import 'package:latihan_slicing_ui/widgets/button_right_icon.dart';
import 'package:latihan_slicing_ui/widgets/custom_appbar.dart';
import 'package:latihan_slicing_ui/widgets/custom_drawer.dart';
import 'package:latihan_slicing_ui/widgets/custom_outlined_button.dart';
import 'package:latihan_slicing_ui/widgets/custom_stepper.dart';
import 'package:latihan_slicing_ui/widgets/custom_tabbar.dart';
import 'package:latihan_slicing_ui/widgets/info_program_detail.dart';
import 'package:latihan_slicing_ui/widgets/program_include_content.dart';
import 'package:latihan_slicing_ui/widgets/program_offering_content.dart';
import 'package:latihan_slicing_ui/widgets/shape_image_rounded.dart';
import 'package:latihan_slicing_ui/widgets/text_icon_underline.dart';
import 'package:latihan_slicing_ui/widgets/text_underline.dart';
import 'package:latihan_slicing_ui/widgets/time_counter.dart';
import 'package:latihan_slicing_ui/widgets/title_fiture.dart';

import '../../enum/circular_side.dart';

class FirstSlicingApp extends StatelessWidget {
  const FirstSlicingApp({super.key});

  @override
  Widget build(BuildContext context) {
    int i = 0;

    List<String> litems1 = [
      "Real-world projects",
      "Project reviews",
      "Project feedback from experienced reviewers"
    ];
    List<String> litems2 = [
      "Technical mentor support",
      "Student community",
    ];
    List<String> litems3 = [
      "Github review",
      "Linkedin profile optimization",
    ];

    List<String> listTabBar1 = [
      "Personalized feedback",
      "Unlimited submissions and feedback loops",
      "Practical tips and industry best practices",
      "Additional suggested resources to improve"
    ];

    List<String> listTabBar2 = [
      "Support for all your technical questions",
      "Questions answered quickly by our team of technical mentors"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(title: 'UDACITY'),
        endDrawerEnableOpenDragGesture: true,
        endDrawer: const MyDrawer(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              color: AppColors.colorBg1,
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
                            "Learn C++, a high-performance programming language used in the world's most exciting engineering jobs -- from self-driving cars and robotics, to web browsers, media platforms, servers, and even video games.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        MyButtonRightIcon(
                          width: 160,
                          text: "Enroll Now",
                          icon: Icons.arrow_right_alt,
                          onPressed: () {
                            i--;
                            print("Yow $i");
                          },
                        ),
                        MyOutlineButton(
                          width: 160.0,
                          text: "Download Syllabus",
                          onPressed: () {
                            i++;
                            print("Hello $i");
                          },
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Row(
                            children: const [
                              MyTimeCounter(
                                count: "05",
                                label: "Days",
                                pRight: 24.0,
                              ),
                              MyTimeCounter(
                                count: "20",
                                label: "Hrs",
                                pRight: 24.0,
                              ),
                              MyTimeCounter(
                                count: "34",
                                label: "Min",
                                pRight: 24.0,
                              ),
                              MyTimeCounter(
                                count: "02",
                                label: "Sec",
                                pRight: 24.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: Stack(
                      children: [
                        Container(
                          height: 350,
                          color: AppColors.colorBg1,
                          child: Image.asset("assets/images/hero-bg.png",
                              fit: BoxFit.cover),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 48),
                          child: Align(
                              alignment: Alignment(0, -1),
                              child: MyShapeImageRounded(
                                image: "hero1.png",
                                circularSide: CircularSide.topLeft,
                              )),
                        ),
                        SvgPicture.asset(
                          "assets/images/foreground-shapes.svg",
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: const Alignment(0.85, -0.90),
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
              width: double.maxFinite,
              color: AppColors.colorBg2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    MyInfoProgramDetail(
                      name: "Estimated time",
                      time: "4 Months",
                      desc: "At 10 hrs/week",
                      pTop: 32,
                    ),
                    MyInfoProgramDetail(
                      name: "Enroll by",
                      time: "March 29, 2023",
                      desc:
                          "Get access to the classroom immediately upon enrollment",
                      pTop: 32,
                    ),
                    MyInfoProgramDetail(
                      name: "Skills acquired",
                      time:
                          "Threading, Heap Memory, Dynamic Memory Allocation, Control Flow",
                      desc: "",
                      pTop: 32,
                    ),
                    MyTextUnderline(
                      text: "See more skills +",
                      textColor: Colors.white,
                      textSize: 12,
                      pButtom: 32,
                    ),
                  ]),
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
                    const Center(
                      child: MyShapeImageRounded(
                          image: "syllabus1.png",
                          circularSide: CircularSide.topRight),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        "4 months to complete",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Text(
                        "Get hands-on experience by coding five real-world projects. Learn to build a route planner using OpenStreetMap data, write a process monitor for your computer, and implement your own smart pointers. Finally, showcase all your newfound skills by building a multithreaded traffic simulator and coding your own C++ application.",
                        style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(bottom: 8, left: 24, right: 24),
                      child: SizedBox(
                        height: 48,
                        width: 160,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.colorBg2),
                          child: const Text(
                            "Download Syllabus",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const MyTextIconUnderline(
                        text: "Related Nanodegree programs",
                        textColor: Colors.black,
                        icon: Icons.arrow_right_alt,
                        boldStyle: true,
                        pTop: 12,
                        pBottom: 32),
                  ]),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: const Text(
                "Prerequisite knowledge",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
              child: Text(
                "To optimize your chances of success in the C++ Nanodegree program, we recommend intermediate knowledge of any programming language.",
                style: TextStyle(fontSize: 16, letterSpacing: 0.5),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              // child: StepperWidget(),
              child: MyStepper(),
            ),
            Container(
              color: AppColors.colorBg2,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 48, top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TitleFiture(
                        title: "All our programs include:",
                        color: Colors.white,
                      ),
                      MyProgramIncludeContent(
                          image: "icon-car.png",
                          title: "Real-world projects from industry experts",
                          content:
                              "With real-world projects and immersive content built in partnership with top-tier companies, you’ll master the tech skills companies want."),
                      MyProgramIncludeContent(
                          image: "icon-laptop.png",
                          title: "Technical mentor support",
                          content:
                              "Our knowledgeable mentors guide your learning and are focused on answering your questions, motivating you, and keeping you on track."),
                      MyProgramIncludeContent(
                          image: "icon-growth.png",
                          title: "Career services",
                          content:
                              "You’ll have access to Github portfolio review and LinkedIn profile optimization to help you advance your career and land a high-paying role."),
                      MyProgramIncludeContent(
                          image: "icon-flexible.png",
                          title: "Flexible learning program",
                          content:
                              "Tailor a learning plan that fits your busy life. Learn at your own pace and reach your personal goals on the schedule that works best for you.")
                    ]),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: AppColors.colorBg3,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleFiture(title: "Program offerings"),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MyProgramOfferingContent(
                            image: "class-content.png",
                            title: "Class content",
                            listItems: litems1,
                            circularSide: CircularSide.bottomLeft,
                          ),
                          MyProgramOfferingContent(
                            image: "student-services.png",
                            title: "Student services",
                            listItems: litems2,
                            circularSide: CircularSide.topRight,
                          ),
                          MyProgramOfferingContent(
                            image: "career-services.png",
                            title: "Career services",
                            listItems: litems3,
                            circularSide: CircularSide.bottomRight,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // TabBarWidget(),
            MyTabBar(
              title: "Succeed with personalized services.",
              desc:
                  "We provide services customized for your needs at every step of your learning journey to ensure your success.",
              tabTitle1: "Experienced Project Reviewers",
              tabTitle2: "Technical Mentor Support",
              listItemTab1: listTabBar1,
              listItemTab2: listTabBar2,
              imageTab1: "feedback.png",
              imageTab2: "on-demand.png",
            ),
          ]),
        ),
      ),
    );
  }
}

/* ------------- [Tab Bar Fiture] -------------
* Start Tab Bar Fiture
*
class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget>
    with TickerProviderStateMixin {
  List<String> litems1 = [
    "Personalized feedback",
    "Unlimited submissions and feedback loops",
    "Practical tips and industry best practices",
    "Additional suggested resources to improve"
  ];

  List<String> litems2 = [
    "Support for all your technical questions",
    "Questions answered quickly by our team of technical mentors"
  ];

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
          titleFiture("Succeed with personalized services."),
          descFiture(
            "We provide services customized for your needs at every step of your learning journey to ensure your success.",
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
                tabs: const [
                  Tab(text: "Experienced Project Reviewers"),
                  Tab(text: "Technical Mentor Support"),
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
                    child: Image.asset("assets/images/feedback.png"),
                  ),
                  SizedBox(
                    height: 120,
                    child: Column(
                      children: [
                        listDataView(litems1),
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
                    child: Image.asset("assets/images/on-demand.png"),
                  ),
                  SizedBox(
                    height: 120,
                    child: Column(
                      children: [
                        listDataView(litems2),
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
* ------------- [Tab Bar Fiture] -------------
* End Tab Bar Fiture
*/

/* ------------- [Stepper Fiture] -------------
* Start Stepper Fiture
*
class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _index = 0;
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ModifiedStepper(
      scrollController: _controller,
      controlsBuilder: (context, details) {
        return const SizedBox.shrink();
      },
      currentStep: _index,
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: [
        ModifiedStep(
          isActive: true,
          title: const Text("C++ Foundations"),
          content: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const Text(
                      "Learn how to develop, compile, and execute C++ programs as well as syntax, functions, containers, and how to link together multiple files."),
                  imageTextUnderline("Route Planner"),
                ],
              )),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Object-Oriented Programming (OOP)"),
          content: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const Text(
                      "Learn to build classes, interfaces, and generic templates to create an object-oriented C++ program. Learn how modern C++ includes many tools for writing clean, reusable code."),
                  imageTextUnderline("Process Monitor")
                ],
              )),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Memory Management"),
          content: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const Text(
                      "Learn to control static and dynamic memory in C++ using the Resource Acquisition Is Initialization pattern, pointers, references, and move semantics."),
                  imageTextUnderline("Memory Management Chatbot")
                ],
              )),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Concurrency"),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                const Text(
                    "C++ supports running multiple execution paths in parallel. Learn how to launch process and threads in order to execute logic in parallel. Then advance to thread synchronization and communication, to experience the full power of concurrent programming."),
                imageTextUnderline("Concurrent Traffic Simulation"),
              ],
            ),
          ),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Capstone Project"),
          content: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const Text(
                      "In your Capstone Project, you will put all of your new C++ skills to use! Utilize the core concepts from this Nanodegree program - object-oriented programming, memory management, and concurrency - to build your own application using C++."),
                  imageTextUnderline(
                      "Capstone Project: Build Your Own C++ Application"),
                ],
              )),
        ),
      ],
    );
  }
}
* ------------- [Stepper Fiture] -------------
* End Stepper Fiture
*/

/// ======================================================================== ///
/*-------------------------- My Function -------------------------------------*/

// Container serviceRate(String title, String desc) {
//   return Container(
//     // color: Colors.blue,
//     margin: const EdgeInsets.only(top: 12, bottom: 12),
//     width: 150,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: const TextStyle(
//               color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           desc,
//           style: const TextStyle(color: Colors.black),
//         ),
//       ],
//     ),
//   );
// }

// Padding descFiture(String text) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
//     child: Text(
//       text,
//       style: const TextStyle(fontSize: 16, letterSpacing: 0.5),
//     ),
//   );
// }

// Padding titleFiture(String text) {
//   return Padding(
//     padding: const EdgeInsets.only(
//       top: 60,
//       right: 24,
//       left: 24,
//     ),
//     child: Text(
//       text,
//       style: const TextStyle(
//           fontSize: 32, fontWeight: FontWeight.w500, letterSpacing: 0.2),
//     ),
//   );
// }

/**
 * 28 Maret 2023 part 2
 */
// Padding programOfferingContent(
//     List<String> litems, String url, String title, CircularSide circularSide) {
//   return Padding(
//     padding: const EdgeInsets.only(top: 40, bottom: 40, left: 24),
//     child: SizedBox(
//       width: 280,
//       height: 400,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             height: 200,
//             width: 260,
//             decoration: BoxDecoration(
//                 color: AppColors.colorBg1,
//                 borderRadius: Util().borderRadiusSelection(circularSide),
//                 image: DecorationImage(
//                     image: AssetImage("assets/images/$url"),
//                     fit: BoxFit.fitHeight)),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 24),
//             child: Text(
//               title,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//             ),
//           ),
//           ListDataView(listItem: litems)
//         ],
//       ),
//     ),
//   );
// }

// BorderRadius borderRadiusSelection(int roundNumber) {
//   return BorderRadius.only(
//     topLeft: (roundNumber == 1)
//         ? const Radius.circular(100)
//         : const Radius.circular(4),
//     topRight: (roundNumber == 2)
//         ? const Radius.circular(100)
//         : const Radius.circular(4),
//     bottomRight: (roundNumber == 3)
//         ? const Radius.circular(100)
//         : const Radius.circular(4),
//     bottomLeft: (roundNumber == 4)
//         ? const Radius.circular(100)
//         : const Radius.circular(4),
//   );
// }

// Flexible listDataView(List<String> litems) {
//   return Flexible(
//     child: ListView.builder(
//         itemCount: litems.length,
//         itemBuilder: (context, index) {
//           return iconText(Icons.check, litems[index]);
//         }),
//   );
// }

// Flexible listDataView(List<String> litems) {
//   return Flexible(
//     child: ListView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: litems.length,
//         itemBuilder: (context, index) {
//           return iconText(Icons.check, litems[index]);
//         }),
//   );
// }

// Row iconText(IconData icon, String text) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Icon(icon, color: AppColors.colorIcon1),
//       Padding(
//         padding: const EdgeInsets.only(left: 12),
//         child: SizedBox(
//           width: 240,
//           child: Text(text),
//         ),
//       ),
//     ],
//   );
// }

/**
 * 28 Maret 2023 part 1
 */
// Padding programsIncludeFiture(String url, String title, String content) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 32),
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.baseline,
//       textBaseline: TextBaseline.alphabetic,
//       children: [
//         Image.asset("assets/images/$url"),
//         Flexible(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 24),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 18),
//                   child: Text(
//                     title,
//                     style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ),
//                 Text(
//                   content,
//                   style: const TextStyle(color: Colors.white, fontSize: 17),
//                 ),
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }

// BoxDecoration imageRounded(
//     double tl, double tr, double bl, double br, String url) {
//   return BoxDecoration(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(tl),
//         topRight: Radius.circular(tr),
//         bottomLeft: Radius.circular(bl),
//         bottomRight: Radius.circular(br),
//       ),
//       image: DecorationImage(
//           image: AssetImage(
//             url,
//           ),
//           fit: BoxFit.fitHeight));
// }

// Padding textUnderline(String text, Color textColor, double textSize,
//     double pHorizontal, double pButtom) {
//   return Padding(
//     padding:
//         EdgeInsets.only(bottom: pButtom, left: pHorizontal, right: pHorizontal),
//     child: Container(
//       padding: const EdgeInsets.only(bottom: 2),
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(color: textColor, width: 1.0),
//         ),
//       ),
//       child: Text(
//         text,
//         style: TextStyle(color: textColor, fontSize: textSize),
//         overflow: TextOverflow.ellipsis,
//       ),
//     ),
//   );
// }

// Padding textIconUnderline(String text, Color textColor, double textSize,
//     IconData icon, bool boldStyle) {
//   return Padding(
//     padding: const EdgeInsets.only(bottom: 32, top: 12, left: 24, right: 24),
//     child: Container(
//       width: 250,
//       alignment: Alignment.center,
//       padding: const EdgeInsets.only(bottom: 2),
//       decoration: BoxDecoration(
//         border: Border(
//           bottom: BorderSide(color: textColor, width: 1.0),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             text,
//             style: (boldStyle)
//                 ? TextStyle(
//                     color: textColor,
//                     fontSize: textSize,
//                     fontWeight: FontWeight.w600)
//                 : TextStyle(color: textColor, fontSize: textSize),
//           ),
//           Icon(
//             icon,
//             size: 24.0,
//             color: textColor,
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Padding imageTextUnderline(String text) {
//   return Padding(
//     padding: const EdgeInsets.only(top: 12),
//     child: Row(
//       children: [
//         Image.asset("assets/images/project-icon.png"),
//         Flexible(
//           child: textUnderline("$text +", AppColors.colorBg2, 14, 12, 0),
//         ),
//       ],
//     ),
//   );
// }

// Padding fitureText(String name, String time, String desc) {
//   return Padding(
//     padding: const EdgeInsets.only(top: 32, left: 12, right: 12),
//     child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//       Padding(
//         padding: const EdgeInsets.only(bottom: 8),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               name,
//               style: const TextStyle(
//                   color: Colors.white, fontWeight: FontWeight.w600),
//             ),
//             Text(
//               time,
//               style: const TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//       Text(
//         desc,
//         style: const TextStyle(color: Colors.white, fontSize: 12),
//       )
//     ]),
//   );
// }

// Padding timeCounter(String count, String label) {
//   return Padding(
//     padding: const EdgeInsets.only(right: 24, top: 12, bottom: 12),
//     child: Column(
//       children: [
//         Text(
//           count,
//           style: const TextStyle(
//               color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
//         ),
//         Text(
//           label,
//           style: const TextStyle(color: Colors.white),
//         )
//       ],
//     ),
//   );
// }
