import 'package:flutter/material.dart';

import 'Other Components/components.dart';

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
