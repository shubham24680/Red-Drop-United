import 'package:flutter/material.dart';

import '../Home/Donates/donates.dart';
import '../Home/Request For Blood/find_donors.dart';
import '../Home/notification.dart';
import '../feedback.dart';
import '../map.dart';
import '../news.dart';
import '../report.dart';

Map<String, WidgetBuilder> routes = {
  'donates': (context) => const Donates(),
  'donor': (context) => const FindDonor(),
  'maps': (context) => const Maps(),
  'news': (context) => const News(),
  'feedback': (context) => const Feedbacks(),
  'report': (context) => const Report(),
  'notification': (context) => const Notifications(),
};
