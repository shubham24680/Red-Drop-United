import 'package:blood_donation/components.dart';
import 'package:flutter/material.dart';

homeAppBar() {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        padding: const EdgeInsets.only(left: 10),
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: Image.asset(
          "assets/icons/menu.png",
          height: 40,
          color: pink,
        ),
      ),
    ),
    actions: [
      IconButton(
        padding: const EdgeInsets.only(right: 10),
        onPressed: () {},
        icon: Image.asset(
          "assets/icons/notification_off.png",
          height: 28,
        ),
      ),
    ],
  );
}
