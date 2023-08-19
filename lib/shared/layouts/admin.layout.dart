import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cashir/shared/constants/colors.dart' as colors;

class AdminLayout extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? floatingActionButton;

  const AdminLayout({
    required this.title,
    required this.child,
    this.floatingActionButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        title: Text(title),
      ),
      body: child,
      floatingActionButton: floatingActionButton,
      drawer: const _MainMenu(),
    );
  }
}

class _MainMenu extends StatelessWidget {
  const _MainMenu();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: Container(
              color: colors.primary,
              alignment: Alignment.center,
              child: const Text("CAHSIR"),
            ),
          ),
          ListTile(
            title: Text("Dashboard".tr),
            leading: const Icon(Icons.dashboard, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/dashboard');
            },
          ),
          ListTile(
            title: Text("Products".tr),
            leading: const Icon(Icons.shopping_bag, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/products');
            },
          ),
          ListTile(
            title: Text("Orders".tr),
            leading: const Icon(Icons.shopping_cart, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/orders');
            },
          ),
          ListTile(
            title: Text("Purcheses".tr),
            leading: const Icon(Icons.shopping_basket, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/purcheses');
            },
          ),
          ListTile(
            title: Text("Clients".tr),
            leading: const Icon(Icons.person, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/clients');
            },
          ),
          ListTile(
            title: Text("Suppliers".tr),
            leading: const Icon(Icons.person, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/suppliers');
            },
          ),
          ListTile(
            title: Text("Reports".tr),
            leading: const Icon(Icons.analytics, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/reports');
            },
          ),
          ListTile(
            title: Text("Settings".tr),
            leading: const Icon(Icons.settings, color: colors.primary),
            onTap: () {
              Get.toNamed('/admin/settings');
            },
          ),
          ListTile(
            title: Text("Logout".tr),
            leading: const Icon(Icons.logout, color: colors.error),
            onTap: () {
              Get.offAllNamed('/login');
            },
          ),
        ],
      ),
    );
  }
}
