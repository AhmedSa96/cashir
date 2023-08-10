// ignore_for_file: constant_identifier_names

import 'package:cashir/modules/home/view/home.screen.dart';
import 'package:cashir/modules/splash/view/splash.screen.dart';
import 'package:get/get.dart';

import '../modules/auth/view/login/login.screen.dart';
import '../modules/auth/view/register/register.screen.dart';

const DEFAULT_ROUTE = '/';

List<GetPage> appRoutes = [
  GetPage(
    name: '/',
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: '/login',
    page: () => LoginScreen(),
  ),
  GetPage(
    name: '/register',
    page: () => const RegisterScreen(),
  ),
  GetPage(
    name: '/home',
    page: () => const HomeScreen(),
  ),
];
