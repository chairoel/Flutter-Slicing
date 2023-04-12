import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/widgets/custom_appbar.dart';
import 'package:latihan_slicing_ui/widgets/custom_drawer.dart';

class CatalogProgramPage extends StatefulWidget {
  const CatalogProgramPage({super.key});

  @override
  State<CatalogProgramPage> createState() => _CatalogProgramPageState();
}

class _CatalogProgramPageState extends State<CatalogProgramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: "UDACITY"),
      endDrawer: const MyDrawer(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(),
        ],
      )),
    );
  }
}
