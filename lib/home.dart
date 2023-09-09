import 'package:flutter/material.dart';

import 'appbar.dart';
import 'body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      drawer: const Drawer(),
      body: const Body(),
    );
  }
}
