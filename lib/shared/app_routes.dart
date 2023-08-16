// ignore_for_file: constant_identifier_names

import 'package:cashir/modules/dashboard/view/dashboard.screen.dart';
import 'package:cashir/modules/splash/view/splash.screen.dart';
import 'package:get/get.dart';

import '../modules/auth/view/login/login.screen.dart';
import '../modules/auth/view/register/register.screen.dart';

const DEFAULT_ROUTE = '/';

List<GetPage> appRoutes = [
  // splash screen
  GetPage(
    name: '/',
    page: () => const SplashScreen(),
  ),

  // auth routes
  GetPage(
    name: '/login',
    page: () => LoginScreen(),
  ),
  GetPage(
    name: '/register',
    page: () => RegisterScreen(),
  ),

  // admin routes
  GetPage(
    name: '/admin/dashboard',
    page: () => const DashboardScreen(),
  ),
];
