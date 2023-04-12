import 'package:flutter/material.dart';

import '../misc/AppColors.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.colorIcon1),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SizedBox(
            width: 240,
            child: Text(text),
          ),
        ),
      ],
    );
  }
}
