import 'package:flutter/material.dart';

theme() {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[200],
      elevation: 0,
      toolbarHeight: 70,
    ),
  );
}
