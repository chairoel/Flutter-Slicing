import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/pages/navpages/catalog_program_page.dart';
import 'package:latihan_slicing_ui/pages/navpages/slicing_ui_pertama.dart';
import 'package:latihan_slicing_ui/test_pages/stepper_test.dart';
import 'package:latihan_slicing_ui/test_pages/menu_page.dart';
import 'package:latihan_slicing_ui/test_pages/test_ui_function.dart';
import 'package:latihan_slicing_ui/test_pages/test_ui_function2.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const FirstSlicingApp(),
    const CatalogProgramPage(),
    // StepperPage(),
    const TestApp(),
    const TestApp2(),
    const MenuPage()
  ];
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0, //pada IOS kalau ngga set seperti ini akan error
        selectedFontSize: 0, //pada IOS kalau ngga set seperti ini akan error
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: "Bar"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Edit"),
        ],
      ),
    );
  }
}
