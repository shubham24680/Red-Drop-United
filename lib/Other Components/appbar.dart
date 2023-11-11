import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components.dart';
import 'text.dart';

homeAppBar(context) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        padding: const EdgeInsets.only(left: 10),
        onPressed: () => Scaffold.of(context).openDrawer(),
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: 30,
          color: pink,
        ),
      ),
    ),
    actions: [
      IconButton(
        padding: const EdgeInsets.only(right: 10),
        onPressed: () => Navigator.pushNamed(context, 'notification'),
        icon: SvgPicture.asset(
          "assets/icons/notification.svg",
          height: 28,
        ),
      ),
    ],
  );
}

tileAppBar(title, context) {
  return AppBar(
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.black87,
      ),
    ),
    title: CText(
      title: title,
      color: Colors.black87,
      size: 24,
    ),
    // actions: [
    //   IconButton(
    //     onPressed: () {},
    //     icon: SvgPicture.asset("assets/icons/filter.svg"),
    //   ),
    // ],
  );
}
