import 'package:flutter/material.dart';

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  List<String> litems = ["Hello", "Saya", "Tukul"];
  // final TextEditingController eCtrl = TextEditingController();
  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic Demo"),
        ),
        body: Column(
          children: <Widget>[
            // TextField(
            //   controller: eCtrl,
            //   onSubmitted: (text) {
            //     litems.add(text);
            //     eCtrl.clear();
            //     setState(() {});
            //   },
            // ),
            Expanded(
                child: ListView.builder(
                    itemCount: litems.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Text(litems[index]);
                    }))
          ],
        ));
  }
}
