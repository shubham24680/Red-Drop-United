import 'package:blood_donation/Authentication/signup.dart';
import 'package:blood_donation/Information/user_info.dart';
import 'package:flutter/material.dart';

import '/Authentication/login.dart';
import '../Authentication/forgot_password.dart';
import '/Home/home.dart';
import '../Home/Donates/donates.dart';
import '../Home/Request For Blood/find_donors.dart';
import '../Home/notification.dart';
import '../feedback.dart';
import '../map.dart';
import '../news.dart';
import '../report.dart';

Map<String, WidgetBuilder> routes = {
  'login': (context) => const Login(),
  'forgotPassword': (context) => const ForgotPassword(),
  'signup': (context) => const Signup(),
  'userInfo': (context) => const UserInfo(),
  'home': (context) => const Home(),
  'donates': (context) => const Donates(),
  'donor': (context) => const FindDonor(),
  'maps': (context) => const Maps(),
  'news': (context) => const News(),
  'feedback': (context) => const Feedbacks(),
  'report': (context) => const Report(),
  'notification': (context) => const Notifications(),
};
