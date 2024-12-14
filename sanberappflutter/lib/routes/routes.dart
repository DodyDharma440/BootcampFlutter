import 'package:flutter/material.dart';
import 'package:sanberappflutter/bottom_nav.dart';
import 'package:sanberappflutter/get_started.dart';

class Routes {
  static Map<String, WidgetBuilder> routeList = {
    '/': (context) => const GetStartedPage(),
    '/main': (context) => const BottomNav(),
  };
}
