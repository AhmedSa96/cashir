import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminLayout extends StatelessWidget {
  final String title;
  final Widget child;

  const AdminLayout({
    required this.title,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: child,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("LOGO"),
            ),
            ListTile(
              title: Text("Dashboard".tr),
              onTap: () {
                Get.toNamed('/admin/dashboard');
              },
            ),
            ListTile(
              title: Text("Constatns".tr),
              onTap: () {
                Get.toNamed('/admin/constants');
              },
            ),
            ListTile(
              title: Text("Orders".tr),
              onTap: () {
                Get.toNamed('/admin/orders');
              },
            ),
            ListTile(
              title: Text("Purcheses".tr),
              onTap: () {
                Get.toNamed('/admin/purcheses');
              },
            ),
            ListTile(
              title: Text("emolpyees".tr),
              onTap: () {
                Get.toNamed('/admin/employees');
              },
            ),
            ListTile(
              title: Text("Reports".tr),
              onTap: () {
                Get.toNamed('/admin/reports');
              },
            ),
            ListTile(
              title: Text("Logout".tr),
              onTap: () {
                Get.offAllNamed('/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
