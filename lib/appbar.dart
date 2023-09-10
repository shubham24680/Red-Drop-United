import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components.dart';

homeAppBar() {
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
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/notification.svg",
          height: 28,
        ),
      ),
    ],
  );
}
