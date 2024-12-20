import 'package:get/get.dart';
import 'package:sanberappflutter/auth/pages/sign_in.dart';
import 'package:sanberappflutter/auth/pages/sign_up.dart';
import 'package:sanberappflutter/bottom_nav.dart';
import 'package:sanberappflutter/detail_news.dart';
import 'package:sanberappflutter/get_started.dart';
import 'package:sanberappflutter/routes/app_route_names.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRouteNames.getStarted, page: () => const GetStartedPage()),
    GetPage(name: AppRouteNames.main, page: () => const BottomNav()),
    GetPage(name: AppRouteNames.signIn, page: () => const SignIn()),
    GetPage(name: AppRouteNames.signUp, page: () => const SignUp()),
    GetPage(name: AppRouteNames.newsDetail, page: () => const DetailNews()),
  ];
}
