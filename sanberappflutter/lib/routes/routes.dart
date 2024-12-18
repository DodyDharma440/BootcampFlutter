import 'package:flutter/material.dart';
import 'package:sanberappflutter/auth/pages/sign_in.dart';
import 'package:sanberappflutter/auth/pages/sign_up.dart';
import 'package:sanberappflutter/bottom_nav.dart';
import 'package:sanberappflutter/get_started.dart';

class Routes {
  static Map<String, WidgetBuilder> routeList = {
    '/': (context) => const GetStartedPage(),
    '/main': (context) => const BottomNav(),
    '/sign-up': (context) => const SignUp(),
    '/sign-in': (context) => const SignIn(),
  };
}
