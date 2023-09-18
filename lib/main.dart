import 'package:blood_donation/routes.dart';
import 'package:blood_donation/theme.dart';
import 'package:flutter/material.dart';

import 'Home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Red Drop United',
      theme: theme(),
      routes: routes,
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
