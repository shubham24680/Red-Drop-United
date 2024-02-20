import 'package:flutter/material.dart';

import '../component.dart';

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
