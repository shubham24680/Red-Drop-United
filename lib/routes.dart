import 'package:flutter/material.dart';
import 'donors.dart';
import 'donates.dart';
import 'map.dart';
import 'news.dart';
import 'feedback.dart';
import 'report.dart';
import 'Home/notification.dart';

Map<String, WidgetBuilder> routes = {
  'donates': (context) => const Donates(),
  'donor': (context) => const Donor(),
  'maps': (context) => const Maps(),
  'news': (context) => const News(),
  'feedback': (context) => const Feedbacks(),
  'report': (context) => const Report(),
  'notification': (context) => const Notifications(),
};
