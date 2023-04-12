import 'package:flutter/material.dart';

class TestApp2 extends StatelessWidget {
  const TestApp2({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> litems = ["Hello", "Saya", "Tukul"];
    List<String> litems2 = ["Hello", "Saya", "Joko", "Mala", "Jombang"];
    List<String> litems3 = ["Hello", "Tukul"];
    List<String> litems4 = [
      "Hello",
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dynamic Demo"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.amber,
            height: 400,
            child: Column(
              children: [
                Container(
                  color: Colors.green,
                  height: 200,
                  child: Column(
                    children: [
                      listDataView(litems),
                    ],
                  ),
                ),
                listDataView(litems2),
                listDataView(litems3),
                listDataView(litems4),
                listDataView(litems),
              ],
            ),
          ),
        ));
  }

  Flexible listDataView(List<String> litems) {
    return Flexible(
      child: ListView.builder(
          itemCount: litems.length,
          itemBuilder: (context, index) {
            return Text(litems[index]);
          }),
    );
  }
}
