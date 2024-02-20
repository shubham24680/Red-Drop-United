import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'body.dart';
import 'component.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      drawer: const Drawer(),
      body: const Body(),
    );
  }
}
