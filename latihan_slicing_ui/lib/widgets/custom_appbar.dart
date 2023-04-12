import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  final Color titleColor;
  final String package;

  const MyAppBar({
    Key? key,
    this.titleColor = Colors.black,
    this.package = "assets/images/udacity-icon.png",
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.white,
      leadingWidth: 56,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        // icon: Image.network(
        //     "https://cdn.iconscout.com/icon/free/png-512/udacity-3772434-3151560.png"),
        icon: Image.asset(package),
        padding: const EdgeInsets.only(left: 18, right: 6),
      ),
      titleSpacing: 0,
      title: Text(
        title,
        style: TextStyle(
            letterSpacing: 3, fontWeight: FontWeight.w400, color: titleColor),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
