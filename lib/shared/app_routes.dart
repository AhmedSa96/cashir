// ignore_for_file: constant_identifier_names

import 'package:cashir/modules/clients/views/create_client.screen.dart';
import 'package:cashir/modules/clients/views/edit_client.screen.dart';
import 'package:cashir/modules/dashboard/view/dashboard.screen.dart';
import 'package:cashir/modules/employees/views/employees.screen.dart';
import 'package:cashir/modules/orders/views/orders.screen.dart';
import 'package:cashir/modules/products/views/create_product.screen.dart';
import 'package:cashir/modules/products/views/product.screen.dart';
import 'package:cashir/modules/purcheses/views/purcheses.screen.dart';
import 'package:cashir/modules/reports/views/reports.screen.dart';
import 'package:cashir/modules/splash/view/splash.screen.dart';
import 'package:cashir/modules/system_constatnts/views/system_constants.screen.dart';
import 'package:get/get.dart';

import '../modules/auth/view/login/login.screen.dart';
import '../modules/auth/view/register/register.screen.dart';
import '../modules/clients/views/clients.screen.dart';
import '../modules/products/views/edit_product.screen.dart';

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

  // products routes
  GetPage(
    name: '/admin/products',
    page: () => const ProductsScreen(),
  ),
  GetPage(
    name: '/admin/products/create',
    page: () => CreateProductScreen(),
  ),
  GetPage(
    name: '/admin/products/:id/edit',
    page: () => EditProductScreen(),
  ),

  // clients routes
  GetPage(
    name: '/admin/clients',
    page: () => const ClientsScreen(),
  ),
  GetPage(
    name: '/admin/clients/create',
    page: () => CreateClientScreen(),
  ),
  GetPage(
    name: '/admin/clients/:id/edit',
    page: () => EditClientScreen(),
  ),

  GetPage(
    name: '/admin/orders',
    page: () => const OrdersScreen(),
  ),
  GetPage(
    name: '/admin/purcheses',
    page: () => const PurchesesScreen(),
  ),
  GetPage(
    name: '/admin/constants',
    page: () => const SystemConstantsScreen(),
  ),
  GetPage(
    name: '/admin/reports',
    page: () => const ReportsScreen(),
  ),
  GetPage(
    name: '/admin/employees',
    page: () => const EmployeesScreen(),
  ),
];
