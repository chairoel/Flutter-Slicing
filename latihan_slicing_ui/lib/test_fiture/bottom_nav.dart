import 'package:flutter/material.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  int _currentIndext = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndext],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndext,
          onTap: (value) {
            setState(() {
              _currentIndext = value;
            });
          },
          backgroundColor: Colors.white,
          // iconSize: 24,
          // mouseCursor: SystemMouseCursors.grab,
          selectedFontSize: 20,
          selectedIconTheme:
              const IconThemeData(color: Colors.amberAccent, size: 40),
          selectedItemColor: Colors.amberAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Icon 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Icon 1",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Icon 1",
            ),
          ]),
    );
  }
}
