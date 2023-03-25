import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/slicing_ui_pertama.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Project"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            goToButton(context, "Slicing UI Pertama", const FirstSlicingApp()),
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
