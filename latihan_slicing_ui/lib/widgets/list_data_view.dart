import 'package:flutter/material.dart';
import 'package:latihan_slicing_ui/widgets/icon_text.dart';

class ListDataView extends StatelessWidget {
  final List<String> listItem;
  const ListDataView({
    super.key,
    required this.listItem,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: listItem.length,
          itemBuilder: (context, index) {
            return IconText(icon: Icons.check, text: listItem[index]);
          }),
    );
  }
}
