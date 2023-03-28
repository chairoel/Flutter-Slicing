import 'package:flutter/material.dart';

Color colorBg1 = const Color(0xFF171a53);
Color colorBg2 = const Color(0xFF142580);
Color colorBg3 = const Color(0xFFf6f6f6);
Color buttonGreen = const Color(0xFFbdea09);

class FirstSlicingApp extends StatelessWidget {
  const FirstSlicingApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          title: const Text(
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
        body: SingleChildScrollView(
          child: Column(children: [
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
                            "Learn C++, a high-performance programming language used in the world's most exciting engineering jobs -- from self-driving cars and robotics, to web browsers, media platforms, servers, and even video games.",
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
                  textUnderline("See more skills +", Colors.white, 12, 12, 32)
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
                              backgroundColor: colorBg2),
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
                    textIconUnderline("Related Nanodegree programs",
                        Colors.black, 16, Icons.arrow_right_alt, true),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Text(
                        "Prerequisite knowledge",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.25),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Text(
                        "To optimize your chances of success in the C++ Nanodegree program, we recommend intermediate knowledge of any programming language.",
                        style: TextStyle(fontSize: 16, letterSpacing: 0.5),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: StepperWidget(),
                    ),
                    Container(
                      color: colorBg2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 80, bottom: 48, right: 24, left: 24),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "All our programs include:",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 32),
                              ),
                              programsIncludeFiture(
                                  "icon-car.png",
                                  "Real-world projects from industry experts",
                                  "With real-world projects and immersive content built in partnership with top-tier companies, you’ll master the tech skills companies want."),
                              programsIncludeFiture(
                                  "icon-laptop.png",
                                  "Technical mentor support",
                                  "Our knowledgeable mentors guide your learning and are focused on answering your questions, motivating you, and keeping you on track."),
                              programsIncludeFiture(
                                  "icon-growth.png",
                                  "Career services",
                                  "You’ll have access to Github portfolio review and LinkedIn profile optimization to help you advance your career and land a high-paying role."),
                              programsIncludeFiture(
                                  "icon-flexible.png",
                                  "Flexible learning program",
                                  "Tailor a learning plan that fits your busy life. Learn at your own pace and reach your personal goals on the schedule that works best for you.")
                            ]),
                      ),
                    ),
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}

/* ------------- [Stepper Fiture] -------------
* Start Stepper Fiture
*/
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
/* ------------- [Stepper Fiture] -------------
* End Stepper Fiture
*/

/// ======================================================================== ///
/*-------------------------- My Function -------------------------------------*/
/**
 * 28 Maret 2023
 */
Padding programsIncludeFiture(String url, String title, String content) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 32),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Image.asset("assets/images/$url"),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  content,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
          ),
        )
      ],
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

Padding textUnderline(String text, Color textColor, double textSize,
    double pHorizontal, double pButtom) {
  return Padding(
    padding:
        EdgeInsets.only(bottom: pButtom, left: pHorizontal, right: pHorizontal),
    child: Container(
      padding: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: textColor, width: 1.0),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: textSize),
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}

Padding textIconUnderline(String text, Color textColor, double textSize,
    IconData icon, bool boldStyle) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 32, top: 12, left: 24, right: 24),
    child: Container(
      width: 250,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 2),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: textColor, width: 1.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: (boldStyle)
                ? TextStyle(
                    color: textColor,
                    fontSize: textSize,
                    fontWeight: FontWeight.w600)
                : TextStyle(color: textColor, fontSize: textSize),
          ),
          Icon(
            icon,
            size: 24.0,
            color: textColor,
          ),
        ],
      ),
    ),
  );
}

Padding imageTextUnderline(String text) {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: Row(
      children: [
        Image.asset("assets/images/project-icon.png"),
        Flexible(
          child: textUnderline("$text +", colorBg2, 14, 12, 0),
        ),
      ],
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
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Text(
              time,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
      Text(
        desc,
        style: const TextStyle(color: Colors.white, fontSize: 12),
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
