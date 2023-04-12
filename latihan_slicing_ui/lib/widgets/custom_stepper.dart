import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/widgets/image_underline.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
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
                children: const [
                  Text(
                      "Learn how to develop, compile, and execute C++ programs as well as syntax, functions, containers, and how to link together multiple files."),
                  // imageTextUnderline("Route Planner"),
                  ImageTextUnderline(text: "Route Planner"),
                ],
              )),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Object-Oriented Programming (OOP)"),
          content: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: const [
                  Text(
                      "Learn to build classes, interfaces, and generic templates to create an object-oriented C++ program. Learn how modern C++ includes many tools for writing clean, reusable code."),
                  // imageTextUnderline("Process Monitor")
                  ImageTextUnderline(text: "Process Monitor"),
                ],
              )),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Memory Management"),
          content: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: const [
                  Text(
                      "Learn to control static and dynamic memory in C++ using the Resource Acquisition Is Initialization pattern, pointers, references, and move semantics."),
                  // imageTextUnderline("Memory Management Chatbot"),
                  ImageTextUnderline(text: "Memory Management Chatbot"),
                ],
              )),
        ),
        ModifiedStep(
          isActive: true,
          title: const Text("Concurrency"),
          content: Container(
            alignment: Alignment.centerLeft,
            child: Column(
              children: const [
                Text(
                    "C++ supports running multiple execution paths in parallel. Learn how to launch process and threads in order to execute logic in parallel. Then advance to thread synchronization and communication, to experience the full power of concurrent programming."),
                // imageTextUnderline("Concurrent Traffic Simulation"),
                ImageTextUnderline(text: "Concurrent Traffic Simulation"),
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
                children: const [
                  Text(
                      "In your Capstone Project, you will put all of your new C++ skills to use! Utilize the core concepts from this Nanodegree program - object-oriented programming, memory management, and concurrency - to build your own application using C++."),
                  // imageTextUnderline(
                  //     "Capstone Project: Build Your Own C++ Application"),
                  ImageTextUnderline(
                      text: "Capstone Project: Build Your Own C++ Application"),
                ],
              )),
        ),
      ],
    );
  }
}
