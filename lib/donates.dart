import 'package:blood_donation/Home/component.dart';
import 'package:flutter/material.dart';

import 'Home/info.dart';
import 'appbar.dart';

class Donates extends StatelessWidget {
  const Donates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tileAppBar("Donates", context),
      body: SizedBox(
        height: 220.0 * request.length,
        child: ListView.builder(
          itemCount: request.length,
          itemBuilder: (context, index) => CustomCard(index: index),
        ),
      ),
    );
  }
}
