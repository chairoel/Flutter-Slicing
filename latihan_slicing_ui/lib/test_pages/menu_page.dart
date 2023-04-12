import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/bottom_nav.dart';
import 'package:latihan_slicing_ui/pages/navpages/slicing_ui_pertama.dart';
import 'package:latihan_slicing_ui/testpages/stepper_test.dart';
import 'package:latihan_slicing_ui/testpages/test_ui_function.dart';
import 'package:latihan_slicing_ui/testpages/test_ui_function2.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Project"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            goToButton(context, "Slicing UI Pertama", const FirstSlicingApp()),
            goToButton(context, "Stepper", const StepperPage()),
            goToButton(context, "Dinamic List stf", const TestApp()),
            goToButton(context, "Dinamic List stl", const TestApp2()),
            goToButton(context, "Bottom Nav", const MyBottomNav()),
          ],
        ),
      ),
    );
  }

  Container goToButton(BuildContext context, String text, Widget goTo) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12), //Margin pada button
      child: SizedBox(
        //Menjadikan width pada button memiliki lebar full layar
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            //[push] Akan memanggil Page berikut nya dan akan ditumpuk seperti "Stack"
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return goTo; //Page tujuan
            }));
          },
          child: Text(text),
        ),
      ),
    );
  }
}
