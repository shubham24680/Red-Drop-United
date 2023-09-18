import 'package:flutter/material.dart';

import 'components.dart';

theme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: background,
    appBarTheme: AppBarTheme(
      backgroundColor: background,
      elevation: 0,
      toolbarHeight: 60,
      centerTitle: true,
    ),
  );
}
